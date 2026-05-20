#import "@local/ib:0.1.0": *
#title[Refresh Rate]
#a-badge[https://en.wikipedia.org/wiki/Refresh_rate]

= Judder
#q[
Most modern anime will play close to 24 fps (24000/1001 fps). However, most displays often run at refresh rates that do not match this frame rate, leading to an effect known as *judder*.

To avoid judder, it is best to try and match your display's refresh rate with the content frame rate via the following methods:
- High refresh rate

  Displays that run at 120Hz, 144Hz, 240Hz, or 360Hz will match with each frame, as they are all multiples of 24. Technically, they should be set at 119.88Hz, 143.86Hz, 239.76Hz, or 359.64Hz to closely match with the majority of content at around 23.976 fps (24000/1001 fps).

  _144Hz displays will not display 30/60 fps content properly. Additionally, none of the above will handle 25 fps content correctly._

- Adaptive sync (Variable refresh rate)

  The best solution is to use G-SYNC/G-SYNC Compatible or FreeSync Premium.
  _Normal FreeSync may work if your monitor supports #a[Low Framerate Compensation (LFC)][https://www.amd.com/en/technologies/free-sync-faq#faq-What-is-Low-Framerate-Compensation?].
  You will also need to use a media player that supports adaptive sync, such as #a[mpv][https://mpv.io/]._

  Additionally, you may need to force exclusive fullscreen to activate adaptive sync.
  In mpv, this can be done by adding `ontop` & `fullscreen` to your `mpv.conf` file.
  You can tell adaptive sync is active when your cursor feels laggy, as this means your display has dropped its refresh rate to match the content.

- Automatic refresh rate adjustment

  Many modern streaming devices (e.g. Amazon Fire TV, Apple TV, NVIDIA SHIELD, etc.) will have the option to change the TV refresh rate to match the content frame rate, either through the device's settings or a setting in the playback software (Kodi, Plex, etc.)

  24/30/60 fps content should all work perfectly. 25 fps content requires 25/50Hz support,
  _which some TVs in #a[NTSC regions][https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/PAL-NTSC-SECAM.svg/2560px-PAL-NTSC-SECAM.svg.png] do not support._
]
#footnote[#a[Playback - The Wiki][https://thewiki.moe/guides/playback/#smooth-playback]]

= Variable refresh rate
#a-badge[https://en.wikipedia.org/wiki/Variable_refresh_rate]

Implementations:
- AMD FreeSync
- Nvidia G-Sync
- DisplayPort 1.2a's optional Adaptive-Sync feature
- HDMI 2.1 Variable Refresh Rate (VRR)
- Apple ProMotion
- Qualcomm Q-Sync

#q[
Ah the age-old tale of G-Sync vs FreeSync. A story of two companies racing to the peak of the variable refresh rate mountain at the same time from opposite sides.

In \~October 2013 Nvidia came out with G-Sync for variable refresh rate mere months before it was ratified by VESA (AMD was showing FreeSync at CES in January 2014).
Unfortunately, because Nvidia were in before the standards body, they had to employ a chip/module embedded in the monitor to enable this feature. That's true G-Sync. Also, G-Sync (for good reason) was proprietary and locked to only Nvidia GPUs.

Once VESA and AMD got variable refresh (VESA Adatpive-Sync) standardized (May 12, 2014), "FreeSync" was coined/born later that year. "FreeSync" uses no module because it works via the Display Port protocol (layman terms) so it adds zero cost to the BoM of a monitor (not that manufacturers can't/won't charge more for premium features like VRR compared to fixed refresh)
There were some downsides to FreeSync early on (which Nvidia was keen to exploit), but that's all been shored up, and for the past 3+ years (I could give you exact number, but don't want to search it), FreeSync is functionally identical to GSync.

Now, Nvidia has/does hold G-Sync monitor to high standards (for good reason, more on that in a minute). G-Sync monitors all have \~40-144Hz refresh rates (with low-framerate comphensation), and low-ish latency (would have to look up exact number).
There may be some other secondary requirements, but again, lets go with this for now. Two main reasons for this:

1.  Those specs offer a "premium" gaming experience. Nobody's going to argue that.
2.  Because the cost of the G-Sync module imparted a \~\$250 (at first, closer to \$150 later on) increase in the BoM of a monitor, Nvidia needed G-Sync monitors to fall in a price bracket that wouldn't deter customers from the price hike.

This became even more dire/pronounced when Nvidia briefly released the G-Sync HDR module that carried a whopping \~\$500 price tag on its own (before you add the cost of the monitor). Oops FreeSync can do HDR VRR for free too!!

In that time, Nvidia had a vested interest with themselves (because monitor makers have to pay Nvidia to use the G-Sync module, which they use to pay off their GSync research investment) and their monitor manufacturer partners to cling to their "dead horse" as long as possible to recoup their development costs.
They've actually alluded to this strategy in that they were monitoring (heh!) the GPU and monitor market demand closely to choose when it was best to abandon ship. Obviously, in January of this year, they caved and enabled support for "FreeSync" (VESA Adaptive Sync).

"G-Sync Compatible" is simply a categorization put forth by Nvidia on "FreeSync" monitors that meet similar specifications that G-Sync monitors follow.
#a[From Nvidia:][https://www.nvidia.com/en-us/geforce/news/g-sync-ces-2019-announcements/]
"We will test monitors that deliver a baseline VRR experience"

1.  G-SYNC Compatible testing validates that the monitor does not show blanking, pulsing, flickering, ghosting or other artifacts during VRR gaming *(not difficult to pass, given later requirements)*
2.  supporting a VRR range of at least 2.4:1 (e.g. 60Hz-144Hz) *(so now we're talking about 120Hz or better monitors)*
3.  and offer the gamer a seamless experience by enabling VRR by default. *(there's the kicker!! Monitors have to have VRR enabled by default out of the box)*
4.  Even if you meet all the above requirements, you need to be able to get Nvidia to actually "validate" your product and put it on their list. Not saying there's anything nefarious going on, but there's a certain value that Nvidia has in their control to endow a product with their "stamp of approval", and with absolute power....

I have first hand experience with a 40-75Hz VRR monitor and my personal 48-144Hz monitor, and I will agree that 48-144Hz (allowing for LFC) is certainly the better experience. AMD's take on that was/is "why limit VRR to only customers with deep pockets?" As time has progressed, the cost of 120+Hz monitors has decreased dramatically.
Heck, you can get a 24" 48-144Hz monitor these days for \$150 or less. So, where the limited refresh range was initially a way to bring VRR to even the low budget masses, it's now being utilized by high resolution monitors that haven't quite gained the adoption/bandwidth/tech to reach into the triple digits refresh rates.

Here are the real requirements you need to meet:
1.  GeForce GTX 10-Series, GeForce GTX 16-Series and GeForce RTX 20-Series or newer graphics card.
2.  A "FreeSync" monitor that has a Display Port input. (FreeSync over HDMI is proprietary to AMD currently)

*A VERY COMMON MISCONCEPTION* is that GSync is superior to "FreeSync". That's simply not true (and from a technical standpoint could be considered the reverse these days). You have to consider that there's two parts to a VRR monitor:

1.  The spec of the panel itself (refresh rate, refresh range, response time, contrast, brightness, local dimming, etc). As described above, since Nvidia only implemented its GSync modules in premium tier panels, consumers have likened GSync to a superior product. I've heard people say "you just know it's good". True! Whereas, since FreeSync was FREE, manufacturers just threw it in everything, leaving the consumers to decide what level of quality was acceptable to the market.
2.  The VRR "tech" making the panel operate. Again, GSync and FreeSync do the same thing.

One gripe I have with the market (jeez, it's been 5 years, let's get this figured out) is the lack of standardization for advertising VRR. Still the best resource I know if is #a[this list curated by AMD][https://www.amd.com/en/products/freesync-monitors] (obviously no true G-Sync monitors on that list though)
]
#footnote[#a[[SOLVED] - Reality of G-Sync Compatible | Tom's Hardware Forum][https://forums.tomshardware.com/threads/reality-of-g-sync-compatible.3540107/]]
