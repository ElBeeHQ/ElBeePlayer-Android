# Changelog

All notable changes to ElBee Player for Android are listed here, newest first.

<!-- Each release adds an entry: "## v0.1.0: Theme (11 November 2026)", then one opening sentence that stands on its
own, then "### " sections of "- **Name:** what it does" bullets. Scripts/publish-release.sh reads it. -->

## v0.1.7: A new look on phones and tablets (18 November 2026)
Phones and tablets get a warmer, calmer design: a picture-led Home, clearer Live TV rows, a new Now Playing page, Settings laid out the Android way, and a Light appearance.

### Look
- **Warm dark and Light:** pages, cards and bars step up in warm near-black tones instead of flat grey. Settings › Appearance › Appearance chooses Dark, Light or Automatic (follows the device).
- **Glow:** behind Now Playing and Home's banner, the picture's own colours light the page softly. Play buttons and badges keep the honey-to-ember gradient; everything else is quieter.

### Home
- **Banner:** the newest films fill the top of Home with their picture running into the page, with Play, Favourite and More About.
- **Rows:** Continue Watching, On Now, Recently Added Films, Favourite Channels, Recommended for You, Because You Watched, Favourite Movies and Favourite Series, each shown only when it has something in it. See All opens the page behind a row.
- **Home Screen setting:** Settings › Appearance › Home Screen switches each row on or off and changes their order.
- **Playlist:** the open playlist's name sits at the top left; with more than one playlist, tap it to switch.

### Live TV
- **Rows:** each channel shows its logo, number, name, what's on with its times and a thin progress line, and what's next. The channel playing sits on its own card.
- **Categories:** the current category and its neighbours are chips along the top; the chip with the arrows opens the full list.
- **Versions of a channel:** "2 feeds" shows when one row stands for several versions of a channel, and the same channel's versions in any bracket style now combine.

### Now Playing
- **Slides up over the tabs:** opening the player fills the screen; the arrow at the top left (or a swipe down) brings back the page and the small player.
- **Film and episode:** the title and its details come first, then the timeline, Play/Pause between bigger skip buttons, Favourite, Start Over and Subtitles & Audio, the description, the people and More Like This.
- **Live:** the channel, what's on with how long is left, Favourite, Channels and Subtitles & Audio, what's on later, then the channel list.

### Names
- **Tidier names:** prefixes such as "EN|" and provider tags are hidden by default, and quality words move into a small badge, in lists, the player, the small player and the notification.
- **Separator rows:** decorative heading rows in a provider's channel list ("★★★ News ★★★") no longer show as channels.

### Settings
- **Android layout:** Settings opens on the playlist card and one row per area, each with its own icon; About and Reset are pages of their own, and every reset is in red.
- **Back:** Back on a phone goes back one level in Settings.
- **Show Content In:** can be set back to All Languages.
- **Channel order with a language chosen:** All Channels keeps the provider's order after Show Content In leaves languages out, instead of mixing categories together.
- **Search:** results say where a setting lives ("Settings › Playback › Audio").

### Accessibility
- **TalkBack:** every new button and row has a spoken name; a switch row is one stop that says on or off.

### TV
- **Sign-in:** after a sign-in attempt, the remote's focus goes back to the form.

## v0.1.6: Playlists that can't open, and playlist names (18 November 2026)
A playlist whose subscription has ended no longer leaves the app waiting at launch: it says why and lets you pick another, and every playlist now has a name you choose.

### Playlists
- **Ended or turned-off accounts:** ElBee Player checks the account before loading anything. If the subscription has ended, the provider has turned the account off or the sign-in is refused, it shows Choose a Playlist with the reason ("This playlist’s subscription ended on 12 November 2026.") and Try Again, Edit…, Remove… and Add Playlist…. This happens at launch, when you make a playlist active, when you add one and when you refresh.
- **Loads that stop:** signing in, opening the stored library and downloading the playlist each have a time limit. A server that stops sending, or never answers, ends with a clear message and the same choices instead of a load that never finishes. Cancel still works at every step.
- **M3U links:** a link that is refused, gone or empty is reported the same way before anything is loaded.
- **Playlist names:** a name field when you add or edit a playlist (it starts as the server's address). Edit… is on every playlist in Settings › Playlists and in Choose a Playlist.

### Loading
- **Cancel on every load:** opening a playlist at launch, switching to one and reloading one after an edit now offer Cancel too, not only the first load. Cancel goes to Choose a Playlist.
- **Refresh percentage:** Refresh Playlist & Guide Now shows how far it has got beside its line in Settings › Playlists.

### Accessibility
- **Which playlist:** with TalkBack, a playlist's buttons say which playlist they act on ("Edit, Living Room").
- **Why it couldn't be added:** the reason a playlist couldn't be added is read out, and on a phone the page scrolls to it.

### TV
- **Which playlist:** "Playlist: <name>" sits in a quiet line above every page, so you always know which one is open.

### Phone and tablet
- **Which playlist:** the open playlist's name shows at the top of Home, in Choose a Playlist and in Settings.
- **No refresh toast:** the "Refreshing…" message that popped up over the page is gone; the loading strip already shows it.

## v0.1.5: Stopping playback fixed (17 November 2026)
Stopping or changing what plays no longer closes the app when your playlist's addresses start with https.

### Playback
- **Stop and switch:** pressing Back on a station or channel, leaving the Radio page, changing channel, closing the mini-player and moving between a film and a channel no longer close the app when your playlist uses secure (https) addresses.

## v0.1.4: Loading and format badges (17 November 2026)
Every load now shows how far it has got, posters say what format a title comes in, and an update download that stalls says why.

### Loading
- **Progress on every load:** first launch, relaunch, switching playlist and Refresh Now each show the steps in order with a bar that fills and never goes back. A load that is over in under a second shows only the logo.
- **While you browse:** an update of a library you are already using shows in a thin strip on the page, not over it.

### Posters and title pages
- **Format badges:** films and series show their picture and sound format, as on the Mac.

### Updates
- **Stalled downloads:** an update download that stops says why ("No internet connection.", "The update server isn't answering." or "The download stopped.") and offers Try Again.

## v0.1.3: Spatial Audio (17 November 2026)
Films and channels with surround sound can now go to your TV or soundbar as they are, and the player says what it is sending.

### Playback
- **Spatial Audio:** a new setting in Playback › Audio, on by default. Surround sound goes straight to your TV or soundbar when they can play it. If they can't take the spatial version, ElBee Player sends the same sound as plain surround. If they can't take surround either, the sound is played on the device as before. Turn it off to send spatial sound as plain surround (5.1).

### Player
- **What you're hearing:** the player's info row says "Spatial Audio" or "Surround 5.1" while that is what reaches your TV or soundbar, and nothing for ordinary sound.

## v0.1.2: ElBeeHQ credits (16 November 2026)
A small release: ElBee Player now says who makes it, and About lists the trademarks it names.

### TV
- **Start and loading screens:** a quiet "from ElBeeHQ" at the foot of the screen. The ElBee Player logo and name stay where they were.

### About
- **Made by ElBeeHQ:** the ElBeeHQ logo closes the About page on TV, and the General tab on phones and tablets.
- **Third-Party Notices:** now lists the trademarks of the platforms ElBee Player runs on, and the font the ElBeeHQ logo is drawn from.

## v0.1.1: Fire TV fixes (15 November 2026)
Small fixes from the first weeks on Fire TV: a box for pasting a whole link, loading that ticks off in order, a TV Guide that keeps its full width, and a clearer Manage Playlists.

### Sign-in
- **Fill In From Link:** opens a box where you can paste or type the whole link from your provider, then fills in the server, username and password. Paste From Clipboard is still there as an extra.

### Loading
- **Loading in order:** Live TV, Movies and Series each tick off in turn. The TV Guide row says it loads in the background. Cancel goes once loading is done.
- **Start screen:** a larger logo with the ElBee Player name, in the middle of the screen, that stays in one place from launch to the loading screen. On TV the loading steps sit in one row.

### TV
- **TV Guide with the mini-player:** the guide keeps its full width. The mini-player sits in the top-right corner, beside the programme's details.
- **TV Guide clock:** shows the day and date with the time, in your device's language and 12- or 24-hour setting.
- **TV Guide opens at now:** each time you open it, the times start at the current time with the now line on screen. Back from full screen still returns to the programme you were on.
- **Getting back to the menu from the TV Guide:** Left goes back through programmes only as far as the one on now (further only where the channel has catch-up), then to the channel names, then the menu. Back goes straight to the menu.

### Settings
- **Manage Playlists:** each playlist is a card with its own buttons: Make Active, Refresh Playlist & Guide Now and Remove…. Add Playlist… has its own button. On TV, beside the mini-player, the buttons wrap onto a second line instead of squeezing.
- **Refresh Playlist & Guide Now:** shows that it's working, then says when the playlist was last refreshed and what it got, until the next refresh. If your provider can't be reached, it says so and your lists stay as they were.

### About
- **Third-Party Notices:** now lists Okio, and each build lists only what it contains.

## v0.1.0: First release (14 November 2026)
The first public release of ElBee Player for Android: one app for TV and phone that plays the playlist you already have from your TV provider.

### In short
ElBee Player is a media player. It includes no channels, films or other content. Use your own playlist from your TV provider.

- Live TV, TV Guide, Catch-Up, Radio, Movies, Series, Favourites, History
- Server Sign-In or M3U playlist
- TV remote and touch layouts
- Built-in updates

Coming next: easier playlist management, pasting a whole link, smoother loading.

### Pages
- **Home and Recently Added:** what is new in your library and what to pick up next.
- **Live TV and TV Guide:** your channels and a full guide, with a mini-player that stays with you while you browse.
- **Catch-Up:** where your provider offers it.
- **Radio, Movies and Series:** your library, organised into clear pages with posters and categories.
- **Favourites and History:** keep what you like and pick up where you left off.

### Sign-in
- **Server Sign-In:** the server address, username and password your provider gave you.
- **M3U playlist:** add a playlist link, with an optional guide link.
- **Private:** sign-in details are stored encrypted on your device (Android Keystore). No accounts, no advertising, no analytics.

### One app for every screen
- **TV remote layout:** a side rail for the pages, large type, and everything reachable with the remote's D-pad. Fire TV, Android TV and Google TV.
- **Touch layout:** tabs on phones, a navigation rail on tablets, portrait and landscape.
- **Player:** full screen, with audio and subtitle choices.

### Updates
- **Built-in updates:** the app checks a signed list of releases on this page when it opens (at most once a day) and from Settings › General › Updates. It shows what is new and asks before it installs. It never downloads on a metered connection without asking.

### Coming next
- **Manage Playlists:** a clearer screen for adding, editing and removing playlists.
- **Fill in from link:** a text box where you can paste the whole link, so a link copied on your phone can be used on your TV.
- **Loading:** every step of the first load shown and ticked in order, and a smoother hand-over between the two start screens.
- **TV Guide with the mini-player:** the guide uses the full width where the mini-player is not in the way.

---
ElBee Player is a media player. It includes no channels, films or other content. Use your own playlist from your TV provider.
