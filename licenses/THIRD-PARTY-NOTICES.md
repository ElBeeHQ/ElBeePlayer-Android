# Third-party notices

ElBee Player for Android includes the following third-party software. The app shows this same file, with the full
licence texts after it, in Settings › General › About › Third-Party Notices (it is built into the app from this file).

## FFmpeg 6.0.1 (in `libffmpegJNI.so`, module `:ffmpeg`)

- Licence: **GNU Lesser General Public License version 2.1 or later** (LGPL 2.1+). Full text:
  `ffmpeg/COPYING.LGPLv2.1`.
- Copyright (c) the FFmpeg developers, https://ffmpeg.org.
- Configuration: audio decoders only (ac3, dca, mp1, mp2, mp3) in libavcodec, with libavutil and
  libswresample. No GPL (`--enable-gpl`) or nonfree (`--enable-nonfree`) parts, no external libraries
  (`--disable-autodetect`). FFmpeg's configure reports "LGPL version 2.1 or later". The exact configure line, versions
  and checksums: `ffmpeg/FFMPEG-BUILD.txt`.
- Unmodified source: https://ffmpeg.org/releases/ffmpeg-6.0.1.tar.xz
  (SHA-256 `9b16b8731d78e596b4be0d720428ca42df642bb2d78342881ff7f5bc29fc9623`), to be attached to each release.
- Build script (to rebuild or relink with a modified FFmpeg): `scripts/build-ffmpeg-decoder.sh`.
- No AAC or E-AC-3 decoder of its own: those formats use the device's own decoder. See `docs/player.md` ("Licences");
  not legal advice.

## AndroidX Media3 1.11.1 (ExoPlayer, Media3 Session, including decoder_ffmpeg's Java and JNI code)

- Licence: **Apache License 2.0**. Full text: `ffmpeg/LICENSE-media3-apache-2.0`.
- Copyright (C) The Android Open Source Project. https://github.com/androidx/media
- `ffmpeg/src/main/java/androidx/media3/decoder/ffmpeg/*.java` and the JNI wrapper `ffmpeg_jni.cc` (compiled into
  `libffmpegJNI.so`) are Media3's files, unchanged.

## OkHttp 5.5.1

- Licence: **Apache License 2.0**. Copyright Square, Inc. https://square.github.io/okhttp/

## Haze 1.7.1 (`dev.chrisbanes.haze:haze`, module `:ui`)

- Licence: **Apache License 2.0** (http://www.apache.org/licenses/LICENSE-2.0.txt), Copyright Chris Banes and contributors.
- Used for the real backdrop blur behind glass surfaces (the mini-player and the top button capsule) on Android 12 and later.
  Unmodified; fetched from Maven Central.

## Android Jetpack (Compose, Compose for TV, Material 3, Navigation, Lifecycle, Activity, Room, DataStore, WorkManager, Core)

- Licence: **Apache License 2.0**. Copyright (C) The Android Open Source Project. https://developer.android.com/jetpack
- Some Room and DataStore parts are also offered under the BSD 3-Clause licence.
- Material icons (in material-icons-extended): Apache License 2.0, Copyright Google LLC.

## Public suffix list (inside OkHttp, `PublicSuffixDatabase.list`)

- Licence: **Mozilla Public License 2.0** (https://mozilla.org/MPL/2.0/). Maintained by Mozilla and contributors,
  https://publicsuffix.org. Included unmodified; its source is the list at https://publicsuffix.org/list/.

## Kotlin, kotlinx.coroutines and kotlinx.serialization

- Licence: **Apache License 2.0**. Copyright JetBrains s.r.o. and Kotlin Programming Language contributors. https://kotlinlang.org

## Coil 3.6.3

- Licence: **Apache License 2.0**. Copyright Coil Contributors. https://coil-kt.github.io/coil/

## Bouncy Castle Provider 1.86 (`bcprov-jdk18on`, module `:updater`)

- Licence: **MIT**. Copyright (c) 2000-2026 The Legion of the Bouncy Castle Inc. (https://www.bouncycastle.org).
  Used to check the update feed's signature. Unmodified.

> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
> documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
> rights to use, copy, modify, merge, publish, distribute, sub license, and/or sell copies of the Software, and to
> permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright
> notice and this permission notice shall be included in all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
> WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
> COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
> OTHERWISE, ARISING FROM, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## ASM 9.9.1 (`org.ow2.asm:asm`, module `:core`, tests only: not in the app)

- Licence: **BSD 3-Clause** (https://asm.ow2.io/license.html), Copyright (c) 2000-2011 INRIA, France Telecom.
- Used by `AndroidApiGuardTest` to read core's compiled classes for the Android API check. Never packaged into the APK.

## The licence texts

The full texts of the GNU Lesser General Public License 2.1 (`ffmpeg/COPYING.LGPLv2.1`) and the Apache License 2.0
(`ffmpeg/LICENSE-media3-apache-2.0`) follow this list in the app and are published with every release.

## FFmpeg source offer (LGPL 2.1 or later)

The FFmpeg in this app is unmodified FFmpeg 6.0.1. Its source, the exact build settings and the script that builds it
are published with every release:

- Source: https://ffmpeg.org/releases/ffmpeg-6.0.1.tar.xz (SHA-256 `9b16b8731d78e596b4be0d720428ca42df642bb2d78342881ff7f5bc29fc9623`),
  also attached to each release as `ffmpeg-6.0.1.tar.xz`.
- Build settings: `FFMPEG-BUILD.txt`. Build script: `build-ffmpeg-decoder.sh` (needs the Android NDK r28c; it downloads
  and checks everything it uses).
- Your right to use a modified FFmpeg with the app: rebuild `libffmpegJNI.so` with the script, replace it in the APK
  (`lib/<abi>/libffmpegJNI.so`), sign the APK with your own key and install it. Android only updates an app signed with
  the same key, so uninstall the copy you have first. The ElBee Player Licence (clause 3) allows this, and reverse
  engineering as far as you need to debug it.

