#import "@local/ib:0.1.0": *
#show: ib
#title[#a[mpv][https://mpv.io/]]
#a-badge[https://github.com/mpv-player/mpv]
#a-badge[https://wiki.archlinux.org/title/Mpv]

#q[🎥 Command line video player]

Features:
- Windows, Linux, Android, macOS
  - #a[zhongfly/mpv-winbuild: Use Github Action to build mpv for Windows with latest commit.][https://github.com/zhongfly/mpv-winbuild]

#a[Reference][https://mpv.io/manual/master/]
- #a[mpv.conf -- I am Scum ... and so are you.][https://iamscum.wordpress.com/guides/videoplayback-guide/mpv-conf/]

#a[mpv - The Wiki][https://thewiki.moe/tutorials/mpv/]

#a[stax76/awesome-mpv: A curated list of awesome mpv resources.][https://github.com/stax76/awesome-mpv]

#a[mpv Is the MVP of Video and Image Viewing --- Nick Janetakis][https://nickjanetakis.com/blog/mpv-is-the-mvp-of-video-and-image-viewing]

= Distributions
- #a([mpv.net], <mpv.net>)

- #a[mpc-qt: Media Player Classic Qute Theater][https://github.com/mpc-qt/mpc-qt]

- #strike[#a[MPV_lazy: 🔄 mpv player 播放器折腾记录 windows conf ； 中文注释配置 快速帮助入门 ； mpv-lazy 懒人包 win10 x64 config][https://github.com/hooke007/MPV_lazy]]
  - #a[mpv_PlayKit: 🔄 mpv player 播放器折腾记录 Windows conf | 中文注释配置 汉化文档 快速帮助入门 | mpv-lazy 懒人包 Win11 x64 config | 着色器 shader 滤镜 filter 整合方案][https://github.com/hooke007/mpv_PlayKit]

- #a[Memento: An mpv-based video player for studying Japanese][https://github.com/ripose-jp/Memento]

- #a[yt-x: Browse youtube plus other yt-dlp supported sites from your terminal][https://github.com/Benexl/yt-x]

== mpv.net <mpv.net>
#a-badge[https://github.com/mpvnet-player/mpv.net]

#q[🎞 mpv.net is a media player for Windows with a modern GUI.]

- #a[mpv.net-DW: mpv.net_CM的DW版本，定制了播放界面、右键菜单、缩略图、视频滤镜和着色器][https://github.com/diana7127/mpv.net-DW]

=== AnimeJaNai (mpv-upscale-2x_animejanai)
#a-badge[https://github.com/the-database/mpv-upscale-2x_animejanai]

#q[Real-time anime upscaling to 4k in mpv with Real-ESRGAN compact models]
- mpv.net + Python + .NET

- Corrupt TensorRT models will cause errors.
  #footnote[#a[V3.2 does not work with RTX 3070. - Issue \#49 - the-database/mpv-upscale-2x_animejanai][https://github.com/the-database/mpv-upscale-2x_animejanai/issues/49]]
  - #q-i[One way to fix this is to manually delete `*.engine` files under `animejanai\onnx`.]

- Scoop: #a[marcValdz/scoop_bucket][https://github.com/marcValdz/scoop_bucket]
  - ```pwsh sudo scoop install extras/windowsdesktop-runtime```

- Profiles
  - `Ctlr+0~3`

- PotPlayer
  - #q[I got a very basic version of upscaling in vapoursynth running in potplayer, but the performance was worse than mpv which is why I didn't pursue it any further.]

= Playback
- $<-$ and $->$:
  Seek backward/forward 5 seconds. `Shift+arrow` does a 1 second exact seek (see `--hr-seek`).
  - Time jump interval 默认为 5 秒，比较长，同时还会 jump to keyframe，可能会长达十几秒。

- $arrow.t$ and $arrow.b$:
  Seek backward/forward 1 minute. `Shift+arrow` does a 5 second exact seek (see `--hr-seek`).

- `,` and `.`:
  Step backward/forward one frame.

= Video
== Screenshots
- UI
  - `s`: Take a screenshot.
  - `S`: Take a screenshot, without subtitles. (Whether this works depends on VO driver support.)

- `screenshot-directory` defaults to the desktop in pseudo-gui mode.
  - Start directory: `./`
  - Video directory: `%x` prefix in `screenshot-template`.
    #footnote[#a[Save screenshot in the same folder as the original video : r/mpv][https://www.reddit.com/r/mpv/comments/pd1wob/save_screenshot_in_the_same_folder_as_the/]]

- `screenshot-template`
  - Default: `mpv-shot%n`
  - Full and compact: `%X{~~/screenshots/}%F_%wH%wM%wS.%wT`
  - AnimeJaNai: `%F__%P__%04n`
  - PotPlayer: `%X{~~/Capture/}%f_%wH%wM%wS.%wT`

- `screenshot-format` defaults to `jpg`.
  - `jxl`: $[1,9]$, 1.0 (JPEG 90) by default.
  - `avif`
  - `webp`: 75 by default.
  - `png`
    - Inefficient for 10-bit color depth: $(16times 3)/30=1.6$x.
  - `jpg`: 90 by default.

- How to save without upscaling?

```conf
screenshot-format=jxl
screenshot-jxl-distance=1.0
screenshot-jxl-effort=9
screenshot-directory=~~/screenshots/
screenshot-template='%X{~~/screenshots/}%F_%wH%wM%wS.%wT'
```
