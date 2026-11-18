# Changelog

All notable changes to ElBee Player for Android are listed here, newest first.

<!-- Each release adds an entry: "## v0.1.0: Theme (11 November 2026)", then one opening sentence that stands on its
own, then a "### In short" section, then "### " sections of "- **Name:** what it does" bullets.
"### In short" is what the in-app update prompt shows under the opening sentence, so write it for someone deciding
whether to update: 3 to 6 bullets, each a whole sentence in everyday words saying what they'll notice and where
(no internal names such as "rail", "chips" or "ladder"). It is left out of the GitHub release, which shows the rest.
Bullet names in the other sections say what changed ("A page for every film"), not just where ("Film page").
Scripts/publish-release.sh reads it, and scripts/release_notes.py refuses an entry with no "### In short". -->

## v0.1.8: A new look on TV, and new film, series and guide pages on phones (18 November 2026)
Fire TV, Android TV and Google TV get the new design phones got in 0.1.7, and phones and tablets get a page of their own for every film and series.

### In short
- On TV, the menu on the left is now a slim column of icons that opens with page names when you press Left, so every page has more room.
- TV Home opens with the newest films filling the screen, and Live TV shows what's on now and next on every channel, with a preview beside the list.
- On phones and tablets, every film and series has its own page with its details, cast and More Like This; series list their seasons and episodes.
- The TV Guide, Movies and Series pages on phones and tablets are redesigned.
- Fire TV: in-app updates work again on Fire OS 7. If this update fails on your Fire TV, download it once from elbeehq.com/apk with the Downloader app; later updates will then install from the app.

### TV
- **Warmer colours:** pages, panels and guide cells use warm near-black shades instead of flat grey. The amber highlight on whatever you've selected is unchanged.
- **A slimmer menu:** the menu down the left is now a column of icons laid over the page. Press Left to open it with the page names and the playlist you're using. It opens on the page you're on, and Settings opens at the top.
- **A new Home:** the newest films fill the screen with Play, Favourite and More Info, followed by Continue Watching, On Now and the rest of Home's rows.
- **A new Live TV:** the category you're in and the ones next to it sit as buttons along the top; the first opens the full list (Back closes it). Each channel shows its logo, number, name, what's on and how far through it is, and the selected channel also shows what's next. A preview beside the list follows the channel you're on, with its colours softly behind it.
- **A smaller player bar:** the controls sit in a slimmer bar along the bottom, so more of the picture shows, with Play/Pause in the middle.
- **Film and series pages:** the poster's colours softly light the page.
- **More Like This:** the row of similar titles under a film or series is now called More Like This, as on phones (it was Related).

### Phones and tablets
- **A new TV Guide:** pick a day from the buttons along the top. A line marks the current time, and Now brings it back into view.
- **New Movies and Series pages:** a carousel of new titles at the top, then Recently Added and a row for each category, each with See All. The category buttons open the full list.
- **A page for every film:** year, length, genre and age rating, a description you can expand, director and cast, then Play or Resume, Start from Beginning, Favourite, Subtitles & Audio and More Like This.
- **A page for every series:** its seasons and episodes, with what you've already watched, Next Episode and More Like This.
- **No repeated categories:** a category your provider lists once per country now shows as a single button.

### Fixes
- **Updates on Fire TV:** in-app updates now install on Fire TV devices with Fire OS 7; before, they stopped with "The download isn't a readable app package". A device on 0.1.7 or earlier needs 0.1.8 installed by hand once (elbeehq.com/apk); updates after that work from the app.
- **Long titles on Home:** a title too long for two lines now ends with "…" below the playlist name instead of running underneath it, and the banner grows to fit.

### Accessibility
- **TalkBack on TV:** the menu's icons and the Continue Watching cards now read their names.
- **Settings choices:** each choice is a single stop that TalkBack reads with whether it's selected.

## v0.1.7: A new look on phones and tablets (18 November 2026)
Phones and tablets get a completely new design: warmer colours or a Light look, a Home full of things to watch, clearer Live TV, a new player page and tidier Settings.

### In short
- A warmer dark design throughout, and a Light look if you prefer it (Settings › Appearance › Appearance).
- Home now has rows for Continue Watching, On Now, Recently Added Films, your favourites and recommendations. You choose which rows show, and in what order.
- Live TV shows each channel's programme times, how far through it is and what's on next.
- The player opens full screen with the title, its details and the controls laid out clearly; swipe down to keep it playing while you browse.
- Channel and film names are tidier: provider codes such as "EN|" are hidden.
- Settings is reorganised the Android way, with one page per area.

### Look
- **Warmer dark, or Light:** pages, cards and bars use warm near-black shades instead of flat grey. Settings › Appearance › Appearance chooses Dark, Light or Automatic (follows your device).
- **Colour from the picture:** behind the player and Home's banner, the picture's own colours softly light the page. Play buttons and badges keep the honey-to-ember colours; everything else is quieter.

### Home
- **A banner of new films:** the newest films fill the top of Home, with Play, Favourite and More About.
- **Rows to choose from:** Continue Watching, On Now, Recently Added Films, Favourite Channels, Recommended for You, Because You Watched, Favourite Movies and Favourite Series. A row only shows when it has something in it, and See All opens the full page.
- **Your rows, your order:** Settings › Appearance › Home Screen turns each row on or off and changes their order.
- **Which playlist:** the playlist you're using is named at the top left; if you have more than one, tap it to switch.

### Live TV
- **More in each row:** each channel shows its logo, number, name, what's on with its times, how far through it is, and what's next. The channel playing sits on a card of its own.
- **Categories along the top:** the category you're in and the ones next to it are buttons along the top; the button with arrows opens the full list.
- **One row per channel:** when your provider lists several versions of the same channel (for example in different qualities), they now share one row marked "2 feeds" (or however many).

### Player
- **Full screen, and out of the way:** the player now opens over the whole screen. The arrow at the top left, or a swipe down, takes you back to the page with the small player still going.
- **Films and episodes:** the title and its details come first, then the timeline, Play/Pause between bigger skip buttons, Favourite, Start Over and Subtitles & Audio, then the description, the cast and More Like This.
- **Live channels:** the channel, what's on with how long is left, Favourite, Channels and Subtitles & Audio, then what's on later and the channel list.

### Names
- **Tidier names:** codes such as "EN|" and provider tags are hidden by default, and quality words become a small badge. This applies in lists, the player and the notification.
- **No decorative rows:** heading rows in a provider's channel list (such as "★★★ News ★★★") no longer show up as channels.

### Settings
- **Laid out the Android way:** Settings opens with your playlist and one row for each area, each with its own icon. About and Reset have pages of their own, and every reset is in red.
- **Back:** on a phone, Back goes up one level in Settings.
- **All languages again:** Show Content In can be set back to All Languages.
- **Channel order kept:** with Show Content In set to some languages, All Channels keeps your provider's order instead of mixing categories together.
- **Search shows where:** search results say where a setting is ("Settings › Playback › Audio").

### Accessibility
- **TalkBack:** every new button and row has a spoken name, and a switch row is one stop that says whether it's on or off.

### TV
- **Sign-in:** after you try to sign in, the remote's selection goes back to the form.

## v0.1.6: Playlists that can't open, and playlist names (18 November 2026)
A playlist whose subscription has ended no longer leaves the app stuck at launch: it tells you why and lets you pick another. Every playlist can now have a name of your choosing.

### In short
- If a playlist's subscription has ended, or the provider has turned the account off, the app tells you at launch (with the end date) instead of waiting forever on the loading screen.
- A load that stalls now stops with a clear message and Try Again, instead of never finishing.
- You can name each playlist, and the app shows which one is open.
- Cancel now works on every load, not only the first.

### Playlists
- **Ended or turned-off accounts:** ElBee Player checks the account before loading anything. If the subscription has ended, the provider has turned the account off or the sign-in is refused, it shows Choose a Playlist with the reason ("This playlist's subscription ended on 12 November 2026.") and Try Again, Edit…, Remove… and Add Playlist…. It checks at launch, when you switch playlist, when you add one and when you refresh.
- **No more endless loading:** signing in, opening the saved library and downloading the playlist each have a time limit. A server that stops sending, or never answers, now ends with a clear message and the same choices.
- **M3U links that don't work:** a link that's refused, gone or empty is reported the same way before anything loads.
- **Name your playlists:** a name field when you add or edit a playlist (it starts as the server's address). Edit… is on every playlist in Settings › Playlists and in Choose a Playlist.

### Loading
- **Cancel on every load:** opening a playlist at launch, switching to another and reloading one after an edit now offer Cancel too. Cancel takes you to Choose a Playlist.
- **Refresh shows progress:** Refresh Playlist & Guide Now shows how far it has got, in Settings › Playlists.

### Accessibility
- **Which playlist:** with TalkBack, a playlist's buttons say which playlist they act on ("Edit, Living Room").
- **Why it couldn't be added:** the reason a playlist couldn't be added is read out, and on a phone the page scrolls to it.

### TV
- **Which playlist:** "Playlist: <name>" sits in a quiet line at the top of every page.

### Phones and tablets
- **Which playlist:** the open playlist's name shows at the top of Home, in Choose a Playlist and in Settings.
- **No refresh pop-up:** the "Refreshing…" message that popped up over the page is gone; the loading strip already shows it.

## v0.1.5: Stopping playback fixed (17 November 2026)
Stopping or changing what's playing no longer closes the app when your playlist's addresses start with https.

### In short
- Fixes the app closing when you stopped a channel or station, changed channel or left the Radio page, if your playlist uses secure (https) addresses.

### Fixes
- **Stopping and switching:** pressing Back on a station or channel, leaving the Radio page, changing channel, closing the small player and moving between a film and a channel no longer close the app when your playlist uses secure (https) addresses.

## v0.1.4: Loading and format badges (17 November 2026)
Every load now shows how far it has got, posters say what format a title comes in, and an update download that stalls tells you why.

### In short
- Every load now shows its steps and a bar that fills steadily: at launch, when you switch playlist and when you refresh, not only the first time.
- Posters and title pages show the picture and sound format a film or series comes in.
- If an update download stops, the app says why and offers Try Again.

### Loading
- **Progress on every load:** first launch, later launches, switching playlist and Refresh Now each show the steps in order, with a bar that fills and never goes backwards. A load that's over in under a second shows only the logo.
- **Updates while you browse:** when a library you're already using updates, it shows in a thin strip on the page instead of covering it.

### Posters and title pages
- **Format badges:** films and series show their picture and sound format, as on the Mac.

### Updates
- **Stalled downloads explained:** an update download that stops says why ("No internet connection.", "The update server isn't answering." or "The download stopped.") and offers Try Again.

## v0.1.3: Spatial Audio (17 November 2026)
Films and channels with surround sound can now go to your TV or soundbar as they are, and the player tells you what it's sending.

### In short
- Surround sound now goes straight to your TV or soundbar when they can play it. It's on by default (Settings › Playback › Audio › Spatial Audio).
- The player shows "Spatial Audio" or "Surround 5.1" while that's what is reaching your TV or soundbar.

### Playback
- **Spatial Audio:** a new setting in Playback › Audio, on by default. Surround sound goes straight to your TV or soundbar when they can play it. If they can't take the spatial version, ElBee Player sends the same sound as ordinary surround; if they can't take surround either, the device plays the sound itself, as before. Turn it off to always send ordinary surround (5.1).

### Player
- **What you're hearing:** the player's info line says "Spatial Audio" or "Surround 5.1" while that's what reaches your TV or soundbar, and nothing for ordinary sound.

## v0.1.2: ElBeeHQ credits (16 November 2026)
A small release: ElBee Player now says who makes it, and About lists the trademarks it mentions.

### In short
- The start screen and About now show that ElBee Player is made by ElBeeHQ.
- Third-Party Notices lists the trademarks of the platforms the app runs on.

### TV
- **Start and loading screens:** a quiet "from ElBeeHQ" at the foot of the screen. The ElBee Player logo and name stay where they were.

### About
- **Made by ElBeeHQ:** the ElBeeHQ logo ends the About page on TV, and the General tab on phones and tablets.
- **Third-Party Notices:** now lists the trademarks of the platforms ElBee Player runs on, and the font the ElBeeHQ logo is drawn from.

## v0.1.1: Fire TV fixes (15 November 2026)
Fixes from the first weeks on Fire TV: paste your whole provider link to sign in, loading that ticks off in order, a TV Guide that keeps its full width, and a clearer Manage Playlists.

### In short
- Sign in by pasting the whole link from your provider; the app fills in the server, username and password for you.
- Loading shows Live TV, Movies and Series ticking off one by one.
- On TV, the TV Guide keeps its full width with the small player in the corner, opens at the current time, and Left and Back get you to the menu more easily.
- Manage Playlists is clearer: each playlist is a card with its own buttons, and Refresh tells you when it last ran and what it found.

### Sign-in
- **Sign in from a link:** Fill In From Link opens a box where you can paste or type the whole link from your provider, then fills in the server, username and password. Paste From Clipboard is still there too.

### Loading
- **Loading in order:** Live TV, Movies and Series each tick off in turn. The TV Guide row says it carries on loading in the background. Cancel disappears once loading is done.
- **A steadier start screen:** a larger logo with the ElBee Player name in the middle of the screen, which stays put from launch to the loading screen. On TV the loading steps sit in one row.

### TV
- **TV Guide keeps its full width:** with the small player showing, the guide no longer narrows; the small player sits in the top-right corner beside the programme's details.
- **TV Guide clock:** shows the day and date with the time, in your device's language and 12- or 24-hour setting.
- **TV Guide opens at now:** each time you open it, it starts at the current time with the now line on screen. Back from full screen still returns you to the programme you were on.
- **Easier way back to the menu:** in the TV Guide, Left goes back through programmes only as far as the one on now (further only where the channel has catch-up), then to the channel names, then the menu. Back goes straight to the menu.

### Settings
- **A clearer Manage Playlists:** each playlist is a card with its own buttons: Make Active, Refresh Playlist & Guide Now and Remove…. Add Playlist… has its own button. On TV, next to the small player, the buttons wrap onto a second line instead of squeezing.
- **Refresh tells you what happened:** Refresh Playlist & Guide Now shows that it's working, then says when the playlist was last refreshed and what it found. If your provider can't be reached, it says so and your lists stay as they were.

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
- **Home and Recently Added:** what's new in your library and what to pick up next.
- **Live TV and TV Guide:** your channels and a full guide, with a small player that stays with you while you browse.
- **Catch-Up:** where your provider offers it.
- **Radio, Movies and Series:** your library, organised into clear pages with posters and categories.
- **Favourites and History:** keep what you like and pick up where you left off.

### Sign-in
- **Server Sign-In:** the server address, username and password your provider gave you.
- **M3U playlist:** add a playlist link, with an optional guide link.
- **Private:** sign-in details are stored encrypted on your device (Android Keystore). No accounts, no advertising, no analytics.

### One app for every screen
- **TV remote layout:** a menu down the side, large text, and everything reachable with the remote's arrow buttons. Fire TV, Android TV and Google TV.
- **Touch layout:** tabs on phones, a side menu on tablets, portrait and landscape.
- **Player:** full screen, with audio and subtitle choices.

### Updates
- **Built-in updates:** the app checks a signed list of releases when it opens (at most once a day) and from Settings › General › Updates. It shows what's new and asks before it installs. It never downloads on a metered connection without asking.

### Coming next
- **Manage Playlists:** a clearer screen for adding, editing and removing playlists.
- **Fill in from link:** a box where you can paste the whole link, so a link copied on your phone can be used on your TV.
- **Loading:** every step of the first load shown and ticked off in order, and a smoother hand-over between the two start screens.
- **TV Guide with the small player:** the guide uses the full width where the small player isn't in the way.

---
ElBee Player is a media player. It includes no channels, films or other content. Use your own playlist from your TV provider.
