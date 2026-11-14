#!/bin/bash
# Builds Media3's FFmpeg audio decoder (decoder_ffmpeg, Media3 1.11.1) for ElBee Player and copies the result into the
# repo's :ffmpeg module: the Java classes (Apache 2.0, unchanged) into ffmpeg/src/main/java and libffmpegJNI.so per ABI
# into ffmpeg/src/main/jniLibs. Reproducible: every download is pinned by its checksum, and the FFmpeg configuration is
# written to ffmpeg/FFMPEG-BUILD.txt beside the libraries. The script refuses any build whose licence is not exactly
# "LGPL version 2.1 or later". This script is the "build script" offered with the FFmpeg
# source under the LGPL (see docs/player.md).
#
#   scripts/build-ffmpeg-decoder.sh [toolchain dir]
#
# The toolchain dir (default: $ELBEE_TOOLCHAIN, else ../ElBee-review/android/toolchain beside the repo) receives the NDK,
# the FFmpeg and Media3 sources and the build folders. Nothing is installed anywhere else. Run it at background QoS on a
# shared Mac: taskpolicy -b nice -n 19 scripts/build-ffmpeg-decoder.sh
#
# Needs: bash, curl, unzip, tar, xz, make (macOS or Linux). The NDK's clang does all the compiling; no CMake or Ninja.
set -euo pipefail

REPO="$(cd "$(dirname "$0")/.." && pwd)"
# The main checkout, also from a worktree (.claude/worktrees/x), so every checkout shares one toolchain folder beside it.
MAIN="$(cd "$(git -C "$REPO" rev-parse --path-format=absolute --git-common-dir 2>/dev/null || echo "$REPO/.git")/.." && pwd)"
TOOLCHAIN="${1:-${ELBEE_TOOLCHAIN:-$MAIN/../ElBee-review/android/toolchain}}"
mkdir -p "$TOOLCHAIN"
TOOLCHAIN="$(cd "$TOOLCHAIN" && pwd)"

NDK_VERSION=r28c
NDK_ZIP_SHA1=fc20a6bf15a30fb3428c9b60a7308793a362dc6d          # android-ndk-r28c-darwin.zip (dl.google.com repository2-3.xml)
NDK_ZIP_SHA1_LINUX=${NDK_ZIP_SHA1_LINUX:-}                     # set to check the Linux zip too
FFMPEG_VERSION=6.0.1                                           # Media3 1.11.1's README recommends FFmpeg 6.0
FFMPEG_SHA256=9b16b8731d78e596b4be0d720428ca42df642bb2d78342881ff7f5bc29fc9623
MEDIA3_VERSION=1.11.1
MEDIA3_SHA256=${MEDIA3_SHA256:-}                               # GitHub's tag archive; recorded in FFMPEG-BUILD.txt
API=28                                                         # = minSdk
ABIS=(arm64-v8a armeabi-v7a x86_64)
# Audio decoders only (why each, in docs/player.md): MPEG audio layers I-III, AC-3, DTS. E-AC-3 and AAC are left out
# (decision D4): devices decode them with their own licensed decoders, and it keeps both out of the app.
DECODERS=(mp1 mp2 mp3 ac3 dca)

case "$(uname -s)" in
  Darwin) HOST=darwin-x86_64; NDK_ZIP=android-ndk-$NDK_VERSION-darwin.zip; WANT_SHA1=$NDK_ZIP_SHA1 ;;
  Linux)  HOST=linux-x86_64;  NDK_ZIP=android-ndk-$NDK_VERSION-linux.zip;  WANT_SHA1=$NDK_ZIP_SHA1_LINUX ;;
  *) echo "Unsupported host $(uname -s)"; exit 1 ;;
esac
JOBS="$(sysctl -n hw.ncpu 2>/dev/null || nproc 2>/dev/null || echo 4)"

fetch() {   # fetch <url> <file>
  [ -s "$2" ] && return 0
  curl -fL --retry 3 -o "$2.part" "$1"
  mv "$2.part" "$2"
}

# 1. Downloads, each into its own folder.
mkdir -p "$TOOLCHAIN/src" "$TOOLCHAIN/ndk" "$TOOLCHAIN/build"
fetch "https://dl.google.com/android/repository/$NDK_ZIP" "$TOOLCHAIN/$NDK_ZIP"
if [ -n "$WANT_SHA1" ]; then
  echo "$WANT_SHA1  $TOOLCHAIN/$NDK_ZIP" | shasum -a 1 -c -
fi
NDK="$TOOLCHAIN/ndk/android-ndk-$NDK_VERSION"
[ -d "$NDK" ] || unzip -q "$TOOLCHAIN/$NDK_ZIP" -d "$TOOLCHAIN/ndk"

fetch "https://ffmpeg.org/releases/ffmpeg-$FFMPEG_VERSION.tar.xz" "$TOOLCHAIN/src/ffmpeg-$FFMPEG_VERSION.tar.xz"
echo "$FFMPEG_SHA256  $TOOLCHAIN/src/ffmpeg-$FFMPEG_VERSION.tar.xz" | shasum -a 256 -c -
FFSRC="$TOOLCHAIN/src/ffmpeg-$FFMPEG_VERSION"
[ -d "$FFSRC" ] || tar -xJf "$TOOLCHAIN/src/ffmpeg-$FFMPEG_VERSION.tar.xz" -C "$TOOLCHAIN/src"

fetch "https://github.com/androidx/media/archive/refs/tags/$MEDIA3_VERSION.tar.gz" "$TOOLCHAIN/src/media-$MEDIA3_VERSION.tar.gz"
if [ -n "$MEDIA3_SHA256" ]; then
  echo "$MEDIA3_SHA256  $TOOLCHAIN/src/media-$MEDIA3_VERSION.tar.gz" | shasum -a 256 -c -
fi
M3="$TOOLCHAIN/src/media-$MEDIA3_VERSION/libraries/decoder_ffmpeg"
[ -d "$M3" ] || tar -xzf "$TOOLCHAIN/src/media-$MEDIA3_VERSION.tar.gz" -C "$TOOLCHAIN/src" \
  "media-$MEDIA3_VERSION/libraries/decoder_ffmpeg" "media-$MEDIA3_VERSION/LICENSE"

TC="$NDK/toolchains/llvm/prebuilt/$HOST/bin"
ENABLE=""
for d in "${DECODERS[@]}"; do ENABLE="$ENABLE --enable-decoder=$d"; done
# Media3's own options (build_ffmpeg.sh), plus --disable-autodetect so no external library is picked up from the NDK's
# sysroot (zlib, iconv, ...). GPL and nonfree parts stay off (FFmpeg's defaults); the check below fails the build unless
# FFmpeg's configure reports exactly "LGPL version 2.1 or later" and none of --enable-gpl, --enable-nonfree or
# --enable-version3 is among the configure flags.
COMMON="--target-os=android --enable-static --disable-shared --enable-pic --disable-doc --disable-programs
  --disable-everything --disable-avdevice --disable-avformat --disable-swscale --disable-postproc --disable-avfilter
  --disable-network --disable-autodetect --disable-symver --enable-swresample --disable-v4l2-m2m --disable-vulkan
  --disable-debug $ENABLE"

# 2. FFmpeg (static avcodec, avutil, swresample) and the JNI wrapper per ABI.
OUT_JNI="$REPO/ffmpeg/src/main/jniLibs"
for abi in "${ABIS[@]}"; do
  case $abi in
    arm64-v8a)   triple=aarch64-linux-android; arch="--arch=aarch64 --cpu=armv8-a"; cflags=""; ldx="-Wl,-Bsymbolic" ;;
    armeabi-v7a) triple=armv7a-linux-androideabi; arch="--arch=arm --cpu=armv7-a"
                 cflags="-march=armv7-a -mfloat-abi=softfp"; ldx="-Wl,--fix-cortex-a8" ;;
    x86_64)      triple=x86_64-linux-android; arch="--arch=x86_64 --cpu=x86-64 --disable-asm"; cflags=""; ldx="" ;;
  esac
  B="$TOOLCHAIN/build/ffmpeg-$FFMPEG_VERSION-$abi"
  P="$B/install"
  # Built again when the decoder list changed since the folder was made.
  if [ ! -f "$P/lib/libavcodec.a" ] || [ "$(cat "$B/decoders.txt" 2>/dev/null)" != "${DECODERS[*]}" ]; then
    rm -rf "$B"; mkdir -p "$B"; echo "${DECODERS[*]}" > "$B/.decoders.pending"
    (cd "$B" && "$FFSRC/configure" --prefix="$P" $arch --cross-prefix="$TC/$triple$API-" \
       --cc="$TC/$triple$API-clang" --cxx="$TC/$triple$API-clang++" \
       --nm="$TC/llvm-nm" --ar="$TC/llvm-ar" --ranlib="$TC/llvm-ranlib" --strip="$TC/llvm-strip" \
       --extra-cflags="$cflags" $COMMON > configure.log \
     && make -j"$JOBS" > make.log && make install-libs install-headers > install.log && mv .decoders.pending decoders.txt)
  fi
  # Licence check: no GPL, no nonfree, no version 3, no external libraries; the licence must be exactly LGPL 2.1 or later.
  LICENCE="$(sed -n 's/^#define FFMPEG_LICENSE "\(.*\)"/\1/p' "$B/config.h")"
  if [ "$LICENCE" != "LGPL version 2.1 or later" ]; then
    echo "Refusing to continue: FFmpeg's licence for $abi is '$LICENCE', not 'LGPL version 2.1 or later'" >&2; exit 1
  fi
  CONFFLAGS="$(sed -n 's/^#define FFMPEG_CONFIGURATION "\(.*\)"/\1/p' "$B/config.h")"
  for bad in --enable-gpl --enable-nonfree --enable-version3; do
    case " $CONFFLAGS " in *" $bad "*) echo "Refusing to continue: configure flags for $abi contain $bad" >&2; exit 1 ;; esac
  done
  grep -q '^#define CONFIG_GPL 0' "$B/config.h"
  grep -q '^#define CONFIG_NONFREE 0' "$B/config.h"
  grep -q '^#define CONFIG_VERSION3 0' "$B/config.h"
  mkdir -p "$OUT_JNI/$abi"
  "$TC/$triple$API-clang++" -shared -fPIC -O2 -std=c++11 -fvisibility=hidden -fvisibility-inlines-hidden $cflags \
    -I"$P/include" "$M3/src/main/jni/ffmpeg_jni.cc" -o "$B/libffmpegJNI.so" \
    -L"$P/lib" -lswresample -lavcodec -lavutil -llog -landroid -lm -static-libstdc++ \
    -Wl,--exclude-libs,ALL -Wl,--gc-sections -Wl,-z,max-page-size=16384 -Wl,--build-id=none $ldx
  "$TC/llvm-strip" --strip-unneeded -o "$OUT_JNI/$abi/libffmpegJNI.so" "$B/libffmpegJNI.so"
done

# 3. The Java side, unchanged (the video renderer is left out: no video decoders are built).
JAVA_OUT="$REPO/ffmpeg/src/main/java/androidx/media3/decoder/ffmpeg"
mkdir -p "$JAVA_OUT"
for f in FfmpegAudioDecoder FfmpegAudioRenderer FfmpegDecoderException FfmpegLibrary package-info; do
  cp "$M3/src/main/java/androidx/media3/decoder/ffmpeg/$f.java" "$JAVA_OUT/"
done
cp "$M3/proguard-rules.txt" "$REPO/ffmpeg/proguard-rules.txt"
cp "$FFSRC/COPYING.LGPLv2.1" "$REPO/ffmpeg/COPYING.LGPLv2.1"
cp "$TOOLCHAIN/src/media-$MEDIA3_VERSION/LICENSE" "$REPO/ffmpeg/LICENSE-media3-apache-2.0"

# 4. What was built, for the licence notices and for anyone rebuilding it.
B0="$TOOLCHAIN/build/ffmpeg-$FFMPEG_VERSION-${ABIS[0]}"
{
  echo "FFmpeg $FFMPEG_VERSION (https://ffmpeg.org/releases/ffmpeg-$FFMPEG_VERSION.tar.xz, sha256 $FFMPEG_SHA256)"
  echo "Media3 decoder_ffmpeg $MEDIA3_VERSION (https://github.com/androidx/media/tree/$MEDIA3_VERSION/libraries/decoder_ffmpeg)"
  echo "Media3 archive sha256: $(shasum -a 256 "$TOOLCHAIN/src/media-$MEDIA3_VERSION.tar.gz" | cut -d' ' -f1)"
  echo "Android NDK $NDK_VERSION, API $API, ABIs: ${ABIS[*]}"
  echo "Licence (from FFmpeg's configure): $(sed -n 's/^#define FFMPEG_LICENSE "\(.*\)"/\1/p' "$B0/config.h")"
  echo "Configure options (arm64-v8a; the others differ only in --arch/--cpu/cross-prefix and x86_64's --disable-asm):"
  sed -n 's/^#define FFMPEG_CONFIGURATION "\(.*\)"/\1/p' "$B0/config.h" | tr ' ' '\n' | grep -v -e '^--prefix' -e 'prefix=' -e '^--cc=' -e '^--cxx=' -e '^--nm=' -e '^--ar=' -e '^--ranlib=' -e '^--strip=' | sed 's/^/  /'
  echo "Enabled decoders: $(grep "^#define CONFIG_.*_DECODER 1" "$B0/config_components.h" | sed 's/#define CONFIG_\(.*\)_DECODER 1/\1/' | tr 'A-Z\n' 'a-z ')"
  echo "Libraries: libavcodec, libavutil, libswresample, linked statically into libffmpegJNI.so with Media3's ffmpeg_jni.cc"
  echo "Sizes (stripped):"
  for abi in "${ABIS[@]}"; do echo "  $abi: $(wc -c < "$OUT_JNI/$abi/libffmpegJNI.so" | tr -d ' ') bytes"; done
} > "$REPO/ffmpeg/FFMPEG-BUILD.txt"
cat "$REPO/ffmpeg/FFMPEG-BUILD.txt"
