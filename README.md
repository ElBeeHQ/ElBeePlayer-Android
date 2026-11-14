<p align="center">
  <img src="assets/icon.png" alt="ElBee Player icon" width="128" height="128">
</p>

<h1 align="center">ElBee Player for Android</h1>

<p align="center">
  <strong>A fast, native media player for Android TV, Google TV, Fire TV, phones and tablets.</strong><br>
  Live TV, a full TV Guide, Catch-Up, Radio, Movies and Series, in one app.
</p>

<p align="center">
  <a href="https://github.com/ElBeeHQ/ElBeePlayer-Android/releases/latest"><strong>Download the latest release</strong></a>
  &nbsp;·&nbsp;
  <a href="https://elbeehq.com">Website</a>
  &nbsp;·&nbsp;
  <a href="CHANGELOG.md">What's new</a>
  &nbsp;·&nbsp;
  <a href="https://github.com/ElBeeHQ/ElBeePlayer-Android/issues">Report a problem</a>
</p>

<p align="center">
  Free for personal use · Android 9 or later · One app for TV and phone · Updates itself
</p>

---

ElBee Player works with the playlists and servers you already have: sign in with a server address, username and
password, or add an M3U playlist from a web address. Your channels, programme guide, movies and series are ready in
moments, and every visit after that opens straight from a copy kept on your device.

> **ElBee Player is a player only.** It comes with no channels, playlists or media of any kind. You bring your own.
> See [Legal & Disclaimer](#legal--disclaimer).

## One app, made for each screen

- **Android TV, Google TV and Fire TV:** a side rail for the pages, big type, a clear amber highlight on whatever is
  selected, and everything reachable with the remote's D-pad.
- **Phones and tablets:** tabs along the bottom on a phone, a navigation rail on a tablet, portrait and landscape,
  touch first.
- Pages as on the Mac app: Home, Recently Added, Live TV, TV Guide, Catch-Up, Radio, Movies, Series, Favourites and
  History.
- A full-screen player with audio and subtitle choices, and a mini-player that stays with you while you browse.

## Install

ElBee Player for Android is installed from the APK file on the [latest release](https://github.com/ElBeeHQ/ElBeePlayer-Android/releases/latest).

1. On your device, open the latest release and download `ElBeePlayer-x.y.z.apk`. On a TV, download it with a browser
   or a file-transfer app such as Downloader, or copy it over from a computer.
2. Open the file. Android asks whether the app you are using (your browser or file manager) may install apps: allow it
   for this one install. On Android 8 and later this is **Settings → Apps → Special app access → Install unknown apps**.
3. Choose **Install**, then **Open**.
4. Sign in with your server address, username and password, or add an M3U playlist.

**Requirements:** Android 9 (API 28) or later; 64-bit and 32-bit ARM and x86-64 devices.

## Updates

ElBee Player updates itself. Open **Settings → General → Updates** and choose **Check for Updates Now…**, or leave
automatic checks on. The app reads a signed list of releases from this repository, downloads the new version, and checks
it against ElBee Player's signing key and its own certificate before it hands it to Android's installer. Android may ask
you to confirm an update, and, the first time, asks you to allow ElBee Player to install updates (**Install unknown apps**
for ElBee Player itself). Your playlists, favourites and settings are kept.

See the [changelog](CHANGELOG.md) for what changed in each release.

## Privacy & Security

- **Sign-in details are kept encrypted on your device,** in the Android Keystore. None of it is sent to the developer.
- **No analytics, accounts, advertising or tracking.** ElBee Player does not send what you watch, your playlists, your
  favourites or your settings to the developer or to any third party.
- **The only network connections it makes** are to the playlists and servers you enter (channel lists, programme
  guide, artwork addresses they supply, and the streams themselves) and to GitHub, to check for and download updates.
  You can turn automatic update checks off in Settings. As with any web request, GitHub can see your IP address.

## Legal & Disclaimer

**This application is a media player and provides no content, playlists or channels. Users must provide their own.**

- ElBee Player does not include, host, sell, recommend or link to any channels, playlists, programme listings or
  services, and it ships with no examples.
- It is made for use with services and media you have the right to use.
- ElBee Player is not affiliated with or endorsed by any broadcaster, content owner, service provider, Google, Amazon,
  the FFmpeg project or the makers of any library it uses. All names and trademarks belong to their respective owners.

The full terms are at [elbeehq.com/legal.html](https://elbeehq.com/legal.html), and the privacy policy at
[elbeehq.com/privacy.html](https://elbeehq.com/privacy.html).

## Support

Found a problem or have an idea? Open an [issue](https://github.com/ElBeeHQ/ElBeePlayer-Android/issues), or send a
private message from [elbeehq.com](https://elbeehq.com/support.html#contact). The install guide and answers to common
questions are there too.

## Licence

Copyright (c) 2026 ElBeeHQ. All rights reserved. The app is available at no charge for personal, non-commercial use;
see [`LICENSE`](LICENSE).

## Third-party software

ElBee Player uses [FFmpeg](https://ffmpeg.org) (audio decoders only; LGPL 2.1 or later),
[AndroidX Media3](https://github.com/androidx/media), [Jetpack Compose](https://developer.android.com/jetpack/compose),
[OkHttp](https://square.github.io/okhttp/), [Coil](https://coil-kt.github.io/coil/),
[Haze](https://github.com/chrisbanes/haze) (all Apache 2.0) and [Bouncy Castle](https://www.bouncycastle.org) (MIT).
Their licences and notices are in [`licenses/`](licenses/). The FFmpeg in the app is unmodified; its source, build
settings and build script are in `licenses/` and attached to every release, so you can rebuild the library and use the
app with your own build of it.
