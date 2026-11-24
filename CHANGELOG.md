# Changelog

All notable changes to ElBee Player for Android are listed here, newest first.

<!-- Each release adds an entry: "## v0.1.0: Theme (11 November 2026)", then one opening sentence that stands on its
own, then a "### In short" section, then "### " sections of "- **Name:** what it does" bullets.
"### In short" is what the in-app update prompt shows under the opening sentence, so write it for someone deciding
whether to update: 3 to 6 bullets, each a whole sentence in everyday words saying what they'll notice and where
(no internal names such as "rail", "chips" or "ladder"). It is left out of the GitHub release, which shows the rest.
Bullet names in the other sections say what changed ("A page for every film"), not just where ("Film page").
Scripts/publish-release.sh reads it, and scripts/release_notes.py refuses an entry with no "### In short". -->

## v0.3.11: Smoother on TV (24 November 2026)
This update makes Home on TV much smoother, especially on streaming sticks, and keeps films and series in full view beside the small picture.

### In short
- Home on TV moves smoothly: scrolling and moving between rows no longer stutters on streaming sticks.
- Movies, Series, their search and Recently Added keep five posters across beside the small picture of what's playing.
- Tonight and On Now mix your country's channels from all its categories, instead of filling up from one.
- The loading screen's words no longer cover the version number.

### Fixed
- **Smoother Home (TV):** the page's glow and the banner's picture are drawn once and reused as you move, instead of being painted afresh on every frame or every scroll. On a streaming stick, moving around Home went from about 20 frames a second to mostly full speed.
- **Grids beside the small picture (TV):** Movies, Series, their search and Recently Added run on behind the small picture, like Home's rows; the poster you're on always stays clear of it.
- **Your country's channels:** Tonight and On Now take a few channels from each of your country's categories in turn, general ones before sport and events, so one category can't fill every place.
- **Loading screen (TV):** while the loading steps fill the foot of the screen, the version number moves to the top right-hand corner.

### Changed
- **Faster from the start:** ElBee Player now ships with its pages compiled ahead of time, so they run at full speed once your device has set it up after installing or updating.

## v0.3.10: Your channels first (22 November 2026)
This update makes Live TV, the TV Guide and Tonight open on your own country's channels again, smooths out installing updates, and can open ElBee Player when your TV starts.

### In short
- Live TV and the TV Guide open on your country's channels again, never on an empty category.
- Tonight on Home shows your channels: favourites, those you watched lately, then your country's channels with a guide.
- From the next update on, installing one shows an Updating page, and ElBee Player opens again by itself once it's in.
- New in Settings › General: Open at Startup opens ElBee Player when your TV or streaming stick starts up.
- On TV, rows run on behind the small picture of what's playing instead of stopping short of it.

### Fixed
- **Live TV and the TV Guide open where they should:** a category with no channels is never where they open. A category named only for your country, such as "UK", comes after your country's other categories, and On Now and Tonight use its channels only when there are no others: some providers fill it with another country's channels.
- **Tonight shows your channels:** Tonight on Home (TV and phone) shows the channels On Now picks for you, rather than the first category in your provider's order, which could hold channels with no guide.
- **Home's background (TV):** the banner's picture fades away as you scroll down, leaving the page's own glow behind the rows.

### Changed
- **Updating ElBee Player:** after you choose Install Update, a page says the update is going in, and ElBee Player opens again by itself afterwards (up to Android 9, or later where it may display over other apps; otherwise it says to open it from your apps). Cancel in Android's installer brings the prompt back with nothing changed. You'll see it from the update after this one.
- **Rows beside the small picture (TV):** Home's rows, Search's rows and a series' episodes run to the edge of the screen and pass behind the small picture; the one you're on always stays clear of it.
- **The version on loading screens:** every launch and loading screen shows the installed version in its bottom-right corner.

### New
- **Open at Startup:** Settings › General › Startup. ElBee Player opens once your device has started up. On newer devices, turning it on asks you to let ElBee Player display over other apps, which is what lets it open by itself.

## v0.3.9: Smoother browsing (22 November 2026)
This update fixes what got in the way after the new look: the small picture no longer covers what you're browsing, posters show as soon as you open a category, and TV Settings fit far more on a screen.

### In short
- On TV, the small picture of what's playing now sits beside Home, Movies, Series, Recently Added, Search and film and series pages instead of covering them.
- Posters and the background glow appear as soon as you open a category in Movies or Series, without scrolling first.
- In the full-screen TV player, Back hides the controls first; press it again to leave full screen.
- TV Settings show one line per setting, so you scroll far less; what a setting does shows at the foot of the screen.
- Tonight and On Now on Home find your channels again when your country is the United Kingdom or the United States.

### Fixed
- **Room for the small picture (TV):** while something plays in the corner, Home, Recently Added, Movies, Series, Search and film and series pages end short of it, so it covers no posters, words or rows. Movies and Series show three posters across beside it, at the same size, and five again when it closes.
- **Posters on opening a category:** Movies and Series (TV and phone) draw every poster and the glow as soon as a category opens, instead of blank cards until you scrolled.
- **Tonight and On Now for the UK and US:** Home's guide and On Now row show your country's channels again when your provider writes the country as UK or USA.
- **Live TV's words under the picture (TV):** they describe what's playing, under NOW PLAYING, rather than the channel you happen to be on in the list. With nothing playing they follow your move as before.

### Changed
- **Back in the TV player:** with the controls showing, Back hides them and the picture stays full screen; Back again leaves.
- **TV Settings in one line each:** each setting is its name with its value or switch on the right, on the page with a faint line under it. What it does, and the detail behind the "i", show in the line at the foot of the screen while it's selected.
- **The seek bar (TV):** selected, it grows thicker and brighter with a soft halo round its dot, instead of a ring and glow round the whole bar.

## v0.3.8: A fresh look (22 November 2026)
This update gives the whole app a new look on phone and TV, puts tonight's programmes on your Home page, and lets the room take its colour from what you're browsing, with nothing taken away.

### In short
- Home now shows Tonight: what's on and what starts in the next two hours, on a timeline with a red line at now. Tap or press OK on something that hasn't started and ElBee reminds you a minute before.
- The glow at the top of Movies and Series takes its colour from the title you're on.
- Movies and Series open on all your films or series at once, and you can search them by name right on the page.
- Setting up is shorter: three steps from hello to your library, with your country and languages guessed for you.
- Pages are calmer: fewer boxes and pills, big channel numbers, and clearer words for categories and buttons.

### New
- **Tonight on Home:** your country's first channels on a two-hour timeline with quarter-hour ticks and a red now line. What's on plays at once; something to come offers Remind Me, and a card with Watch shows a minute before it starts. Reminders stay on this device only, and last when the app is closed and opened again. On the phone the evening scrolls sideways and See All opens the TV Guide.
- **The room follows the picture:** on Movies and Series the soft glow at the top of the screen takes its colour from the poster you're on (TV) or the featured title on show (phone), and changes slowly. Text, buttons and focus keep their own colours.
- **Tonight on Live TV (phone):** the same two-hour timeline sits above the channels, for the category you're looking at.
- **All Films and All Series:** Movies and Series start on every category at once (hidden and locked categories are left out until unlocked).
- **Search Films and Search Series:** type a name in the box at the top of Movies or Series and the matching titles fill the grid; the category list still narrows as you type. On TV, Back from a film you found brings you back to the results.
- **Now Playing beside the clock (TV):** while a video plays in the small picture, its name sits in the top line next to the time, and a library update shows there too instead of a panel at the foot of the page.

### Changed
- **A new look everywhere:** deep midnight-blue pages with honey-amber for what you can press, a condensed display face for titles and numbers, and quarter-hour ticks on every progress line.
- **Setup in three steps:** Hello (scan the code from your phone, or enter it on this TV), Make It Yours (country and languages, guessed from your device and easy to change), then your library loads straight into Home.
- **Live TV:** categories are words with an amber underline instead of pills, channel numbers are large, and rows sit on the page with only the playing channel lifted.
- **TV Guide:** big channel numbers, the category as amber words, and programmes too short for a readable title are left empty until you move onto them.
- **Movies and Series on TV:** five posters across on every TV.
- **Buttons on TV:** squared-off corners, and the main button of a step in capitals.
- **Phone pages:** Movies, Series, Live TV and the TV Guide use underlined words for categories, seasons and days; Live TV rows sit on the page with the number large.
- **A playlist on a bare address** is called "My Playlist" until you rename it.
- **Preferred Country first:** Live TV and the TV Guide open on your country's first category unless you chose another, and Home's Tonight and On Now show your country's channels.
- **Settings on TV:** the tabs run down the left, each tab's settings are in groups with headings, and the focused setting's help is in a line at the foot.
- **Settings on the phone:** each area has a solid coloured tile for its icon.
- **Now Playing keeps the screen on (phone)** while anything is on it, paused or radio included. Elsewhere the screen sleeps as usual and the programme keeps playing: Pause When Screen Locks is now off unless you turn it on.
- **Featured titles on phone Movies and Series** show one whole card at a time that snaps into place as you swipe.

### Fixes
- **Add a playlist on TV:** Back closes the larger code screen and returns to the form, and a declined send closes the screen as Back does.
- **Phone player:** in portrait with the guide below, the controls stay put instead of hiding while you read; one tap on Full Screen is enough.
- **Phone Home:** the buttons at the top stay readable over a bright picture.
- **TV:** the small picture no longer sits over the clock.
- **TV Guide and Tonight:** the red now line is drawn over the programmes, not hidden behind them, and stops at the last row.
- **Add a playlist on TV:** Sign In sits right under the password, without scrolling.
- **TV pages beside the open side menu** fade under it, so the menu's names stay readable.
- **TV setup lists:** the first language or country isn't cut off at the top when it has focus.
- **Phone player:** the buttons over the picture fade after a few seconds in portrait too, so they no longer cover the top of the video; tap the picture to bring them back.
- **Phone player:** Back from Full Screen returns to Now Playing, upright, instead of jumping to the small player while the phone turns.
- **Phone Series:** the back button no longer sits over the title's words.

## v0.3.7: Preferred Country everywhere (21 November 2026)
This update puts your chosen country first across the whole app, and the phone now names the TV or Mac you send to.

### In short
- Country First is now called Preferred Country, and it sits beside Show Content In under Settings › Playlists › Languages.
- Your country's channels and titles now come first in Live TV, the TV Guide, Films, Series, Catch-Up, All Channels and the rows on Home.
- If your playlist has more than one country, setting up asks which country you prefer, and people already using the app are asked once.
- When you send a playlist from your phone, it now says the name of the TV or Mac, such as "Send to Living Room".

### Changed
- **Preferred Country everywhere:** one ordering rule now covers every list on phone and TV: your country first, then countries that share its language, then the rest. Pinned rows such as All Channels stay at the top. The setting keeps your earlier Country First choice.
- **Asked when it matters:** a set-up step after Choose Your Languages appears only when the playlist has categories from more than one country; Continue needs a choice and Skip keeps the provider's order. On TV the list has the remote's focus straight away.
- **Send to a named device:** the phone asks the TV or Mac for its name and uses it on the way ("Send to …", "Added to …", "… didn't add the playlist"), with general words if it has none.

### Fixes
- **TV mini-player:** a test now checks that the mini-player can be reached with the remote and that OK opens full screen.
- **README:** new screenshots of the TV Home and phone Live TV.

## v0.3.6: Send to your TV or Mac (21 November 2026)
This update gets the phone ready to send a playlist to a Mac as well as a TV.

### In short
- On your phone, Send to TV is now Send to Another Device, because ElBee Player for Mac 0.43.0 can receive a playlist too.
- Can't scan? Find Devices on This Wi-Fi lists your Macs beside your TVs.

### Changed
- **Send to Another Device:** a playlist's menu on the phone says Send to Another Device instead of Send to TV. Point the camera at the code on a TV or on a Mac (File › Add from Your Phone on the Mac), or find either on your Wi-Fi. The words on the way say "the other device" rather than "the TV".
- **On the TV:** the Add from Your Phone or Mac screen now tells Mac users to choose Send to Another Device.

## v0.3.5: A cleaner start, and clearer refresh messages (20 November 2026)
This update tidies the app's opening on newer phones, says why a refresh failed, and removes a TV setting that did nothing.

### In short
- On newer Android phones, the app opens on its own logo, without the phone's rounded icon appearing first.
- When a refresh fails, the message now says whether your provider answered with an error, stopped sending, or couldn't be reached.
- On TV, Settings no longer shows Appearance, which had no effect there.

### Fixes
- **Opening:** on Android 12 and later, the phone's starting screen is the app's dark background with no icon, then the ElBee logo and name, so nothing switches.
- **Refresh messages:** a provider's error, a download that stopped, and a provider that couldn't be reached each have their own words; Copy Diagnostics Summary also records a refresh that failed at sign-in.
- **TV Settings:** Appearance is gone from the TV, whose look is always dark; phones keep it.

## v0.3.4: Your country first (20 November 2026)
You can now choose a country whose categories come first everywhere, such as UK before other countries.

### In short
- Settings › Playlists › Country First puts the country you choose at the top of Live TV, the TV Guide, Movies, Series and Catch-Up.
- Categories from other countries that share its language come next, then everything else.
- Choose None to go back to your provider's order.

### Country First
- **Your country at the top:** the categories whose names start with the chosen country (such as "UK|", "GB|") are listed first, in their usual order; then those of countries with the same language (for the UK: the US, Australia, Ireland, New Zealand); then the rest. All Channels stays first.
- **Everywhere categories are listed:** Live TV, the TV Guide, Movies, Series and Catch-Up, on phones and TVs; country headings follow the same order.

## v0.3.3: Refreshes that try again (20 November 2026)
This update helps very large playlists finish refreshing when the provider briefly refuses partway through.

### In short
- Refreshing a very large playlist now tries again when the provider briefly refuses partway through, instead of stopping.
- If a refresh still fails, Copy Diagnostics Summary says what the provider answered.

### Fixes
- **Trying again:** a list that the provider refuses partway through (too many requests, or a connection limit) is fetched again, up to three times, as for a server error.
- **Diagnostics:** a failed refresh shows the provider's answer, such as "Server error (HTTP 429)", instead of a shortened internal name.

## v0.3.2: Categories that open at the top, and languages that stick (20 November 2026)
This update fixes changing category on TV, playlists showing every language after a switch, and refreshes of very large playlists.

### In short
- On TV, a new Films or Series category opens at its top, with its posters showing straight away.
- A playlist you switch to shows only the languages you chose for it, downloading its lists again if they were stored with another choice.
- Refreshing a very large playlist waits longer for a slow server before giving up.

### Fixes
- **A new category opens at the top:** on TV, Films and Series no longer keep the last category's scroll position, and the new category's posters load without a scroll.
- **Languages after a switch:** a Server playlist whose stored lists include languages it no longer shows downloads them again when it opens (once per launch).
- **Patience with large playlists:** a refresh now waits up to 2 minutes for the server to send more, as long as the connection itself waits, instead of 1 minute.
- **Diagnostics:** the summary now says how the last refresh ended, and why if it failed.

## v0.3.1: A steady TV Guide (20 November 2026)
This update stops the TV Guide flickering between programmes and "No programme information".

### In short
- The TV Guide no longer flickers every couple of seconds between the programmes and "No programme information", on TV and on phones.

### Fixes
- **A steady Guide:** working out where the timeline opens no longer loads every channel in the category, which kept pushing the channels on screen out and back in. Fixed on TV and phone.

## v0.3.0: Send a playlist to your TV, and guides that fit (20 November 2026)
You can now send a playlist from your phone to your TV instead of typing it with the remote, and choose which guide each channel uses.

### In short
- On TV, choose Add from Your Phone or Mac when adding a playlist, then scan the code with your phone's camera, or open the playlist on your phone and choose Send to TV.
- A playlist can use another guide (an XMLTV link) in place of the provider's, and you can match any channel to a guide channel by hand from its menu.
- Settings › Playback › Play In lets you play live TV or films and series in another installed player, or ask each time.
- A new Match Frame Rate setting switches a TV to the frame rate of what you're watching while it plays full screen, where the TV allows it.
- Channels without a guide can now be rewound up to an hour, and the bar shows how far behind live you are.
- The Guide is easier to read, the screens for adding and choosing a playlist are clearer, and on TV the date and time are at the top right of every page.

### Send to TV
- **Add from Your Phone or Mac:** when you add a playlist on the TV, it shows a code to scan and a 6-digit code. Scanning opens ElBee on the phone; or choose Send to TV on a playlist and pick the TV. Both screens show the same code, so you can check it's your TV before the playlist is sent.
- **Only while the screen is open:** the TV listens for a playlist only while that screen is showing, only from a phone or Mac on the same Wi-Fi, and stops as soon as you leave it.
- **Your device's name:** the TV shows the name you gave your phone, so you know who sent it.
- **Ready to try again:** if the playlist's server doesn't answer, the TV keeps the details filled in so you can try again.

### Guide
- **Use Another Guide:** add an XMLTV link to any playlist, on the Add and Edit forms. It replaces the provider's guide. If it can't be loaded, the provider's guide is used for that time and Diagnostics says so. The link is stored securely with the playlist's other sign-in details.
- **Match Guide Channel…:** long-press a channel on the phone, or press Menu on the TV, to search the guide's channels and pick one, or choose No Guide for This Channel. Your choices are kept when the playlist refreshes. Use Automatic Match undoes one; Clear Channel Matches on the playlist's Edit page undoes them all.
- **Better automatic matching:** channels are matched to the guide by the same rules as ElBee on the Mac.
- **Guide Time Offset:** move a playlist's guide earlier or later by whole hours, up to 12 either way, for guides in the wrong time zone.

### Other players
- **Play In:** choose ElBee, another installed player or Ask Each Time, separately for Live TV and for Films & Series. Play In… is also on film and episode pages, and in the player Continue in… (films and episodes) or Open in… (live channels) hands what you're watching over.
- **Picking up where you left off:** when the other player says where you stopped, Continue Watching picks up from there.
- **Privacy:** the first time, a short note explains that the other app gets the stream's address, which includes your sign-in details, and may keep it in its history. ElBee only looks for players that can play video; it doesn't list your other apps.

### Playback
- **Match Frame Rate:** in Settings › Playback › Player, off by default. While a player is full screen, the TV is asked for the mode that suits the stream (25 frames a second goes to 50 Hz, films at 24 to 24 Hz), and the usual mode comes back when you leave full screen. A TV's own setting of Never is respected.
- **Rewind without a guide:** a live channel with no guide can be rewound up to the last hour, as far as the provider allows. The bar ends at live and says how far behind you are, such as "BEHIND LIVE 2 min".

### TV
- **Date and time:** at the top right of every TV page, in your device's date order and 12- or 24-hour clock.

### The Guide's look
- **Easier to read:** channel names show with their number and logo on up to two lines, programmes have more room, the line for now is drawn behind the programmes instead of over them, and the Guide opens at the first programme instead of empty time. Channels with no listings show a quiet empty slot.
- **Header:** just the title and the category; the time is at the top right as on every TV page.

### Adding and choosing a playlist
- **One clear message:** a playlist that can't be opened shows what went wrong on its own row, with Try Again, Edit… and Remove….
- **Choose a Playlist:** each playlist is a card with its own badge, its name on up to two lines and whether it's a Server or M3U playlist. On TV the cards sit in a row: OK opens one, and holding OK or pressing Menu offers Edit… and Remove…; a playlist that can't be opened shows why, and OK tries again. On the phone, Edit… and Remove… are under the card's More button and Add Playlist… stays at the bottom.
- **Tidier sign-in form:** on TV the form is laid out in two balanced columns.
- **Easier to see:** the selected button on TV has dark text on the bright fill.

## v0.2.0: Home Screen on TV, and sealed playlist details (19 November 2026)
Your saved playlists' links and sign-in details are now locked to this device, and on TV you can choose what Home shows.

### In short
- Your saved playlists' links, usernames and guide links are now locked with a key that never leaves this device, like their passwords already were.
- Settings › Playlists shows only where each playlist is from, not its whole link.
- On TV, Settings › Appearance › Layout › Home Screen lets you choose which rows Home shows and their order.
- On TV, the Up Next card can be answered with the remote: OK plays the next episode.

### Privacy
- **Playlist details sealed on the device:** each playlist's link, username, backup links and guide link are sealed together with the same device key as its password, and the plain copies are wiped from the app's storage on the first launch after updating. If this device's key is ever reset, the playlist stays listed and asks you to sign in again.
- **Software keys on some devices:** on some Fire TV devices without a hardware key store, the key is kept in software. It still can't be copied out by apps, but it's less protected on a rooted device.
- **Rolling back:** 0.2.0 can't be rolled back to an earlier version without uninstalling it and adding your playlists again.

## v0.1.9: Choose your categories, and Recently Added Series (19 November 2026)
You can now choose which categories show, one at a time or a whole region at once, and Home has a row of new series.

### In short
- Categories that start with a region, such as "EU|", now take their country and language from their name, so Show Content In leaves out the ones you don't watch.
- Settings › Playlists › Manage Categories lets you set a category's country, hide or show a single category, or hide a whole region, including categories your provider adds to it later.
- A new setting, Hide Categories Without a Country, also hides region categories such as "EU| Mixed" that don't say which country they're for.
- Home has a new Recently Added Series row after Recently Added Films.
- On TV, a new Show Content In choice now updates your lists straight away, and the signing-in screen no longer jumps when the app opens.

### Categories
- **Countries from category names:** a category under a region prefix such as "EU|", or with no prefix, takes its country from the words in its name (English or the country's own name), and that country decides its language and the heading it sits under. Regions such as EU no longer count as English.
- **More region playlists read right:** countries with no prefix code of their own ("EU | Malta", "EU | Cyprus", "EU | Georgia"), short and native forms ("EU | Czech Cinema", "EU | Turk Spor"), a second region's tag ("EU | EXYU General", "EU | Scandinave"), and the name after a provider's own tag ("24/7 | Turkey", "24/7 | Arabe", "VIP | Latin Sport") now say their language, so Show Content In hides them too. "EU | UK General" goes under United Kingdom. A category whose name says nothing about its language is still shown; set its country or hide it in Manage Categories.
- **Hide Categories Without a Country:** a new setting in Playlists › Languages, off by default. While Show Content In leaves languages out, it also hides region categories that don't name a country.
- **Manage Categories:** set any category's country (Automatic, No Country or a country), hide or show one category, or use Hide All / Show All for a whole region. A category can be shown on its own while the rest of its region stays hidden. Choices are kept for each playlist and when it refreshes. On TV everything works with the remote.
- **Reset Category Choices:** it now also undoes hidden categories and chosen countries and regions, and it keeps your Show Content In choice.

### Home
- **Recently Added Series:** the newest series, by the same rules as Recently Added Films, with See All. On phones and tablets you can move it or switch it off in Settings › Appearance › Home Screen.

### Fixes
- **Show Content In on TV:** choosing new languages now refreshes your lists straight away; before, the choice was saved but nothing changed until the next refresh.
- **Signing in on TV:** the logo stays exactly where it is when the app opens, with "Signing in…" and Cancel centred together under it, so the screen no longer jumps and Cancel never covers the credit at the foot.
- **Home on phones:** no dark band appears behind the search, settings and menu buttons as you scroll; they float over the page, and what scrolls under them and the status bar fades out softly instead of clashing with them.

## v0.1.8: A new look on TV, and new film, series and guide pages on phones (18 November 2026)
Fire TV, Android TV and Google TV get the new design phones got in 0.1.7, and phones and tablets get a page of their own for every film and series.

### In short
- On TV, the menu on the left is now a slim column of icons that opens with page names when you press Left, so every page has more room.
- TV Home opens with the newest films filling the screen, and Live TV shows what's on now and next on every channel, with a preview beside the list.
- On phones and tablets, every film and series has its own page with its details, cast and More Like This; series list their seasons and episodes.
- The TV Guide, Movies and Series pages on phones and tablets are redesigned.
- Fire TV: in-app updates work again on Fire OS 7. If this update fails on your Fire TV, download it once from elbeehq.com/apk with a browser or a file-transfer app; later updates will then install from the app.

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
