# Video Players
[Wikipedia](https://en.wikipedia.org/wiki/Media_player_software)

## Libraries
[Video players market share, websites and contacts - Wappalyzer](https://www.wappalyzer.com/technologies/video-players/)

## Tools
[Comparison of video player software - Wikipedia](https://en.wikipedia.org/wiki/Comparison_of_video_player_software)

- Windows
  - Windows Media Player ([Wikipedia](https://en.wikipedia.org/wiki/Windows_Media_Player))
  
  - Microsoft Movies & TV ([Wikipedia](https://en.wikipedia.org/wiki/Microsoft_Movies_%26_TV))
    - Subtitles
    - Mini player
    - Cast to device
    - Play as 360° video
    - Edit in Photos
  
  - Windows Media Player (2022) ([Wikipedia](https://en.wikipedia.org/wiki/Windows_Media_Player_(2022)))
    - Properties
    - Edit with Clipchamp

- [PotPlayer](https://potplayer.daum.net/) ([Wikipedia](https://en.wikipedia.org/wiki/PotPlayer))

  `scoop install potplayer`

  [Windows 的最佳视频播放器：PotPlayer | Best Of - 少数派](https://sspai.com/post/56687) (paid, [什么值得买](https://post.smzdm.com/p/a5klqqx8/))

  [基于 PotPlayer 和 madVR 的播放器教程 | VCB-Studio](https://vcb-s.com/archives/7228)

  Plugins:
  - [LAV Filters: Open-Source DirectShow Media Splitter and Decoders](https://github.com/Nevcairiel/LAVFilters)
  - [madVR: high quality video renderer (GPU assisted) - Doom9's Forum](https://forum.doom9.org/showthread.php?t=146228)

    [07.关于madVR的故事 - 哔哩哔哩](https://www.bilibili.com/opus/861664550919864339)

    [What does madVR offer in typical use? : r/htpc](https://www.reddit.com/r/htpc/comments/wk297y/what_does_madvr_offer_in_typical_use/)

    [我就问问大家。POTPLAYER用MADVR和全默认的区别在哪里，4K+HDR 10BIT片源 NGA玩家社区](https://bbs.nga.cn/read.php?tid=35658623&rand=533)
    > madvr最大的优势就是在于拉升分辨率，1080拉到4k这种开不开madvr区别很大，本来就是4k10bit片源的话，说实话肉眼基本看不出来区别

  - [Masaiki/xy-VSFilter: xy-VSFilter variant with libass backend](https://github.com/Masaiki/xy-VSFilter)

- MPC
  - [MPC-BE: A free and open source audio and video player for Windows](https://github.com/Aleksoid1978/MPC-BE)
    - Russian
    - [Languages](https://github.com/Aleksoid1978/MPC-BE/tree/master/distrib/Languages)

- [mpv: 🎥 Command line video player](https://github.com/mpv-player/mpv)
  - Windows, Linux, Android, macOS
  - [MPV\_lazy: 🔄 mpv player 播放器折腾记录 windows conf ； 中文注释配置 快速帮助入门 ； mpv-lazy 懒人包 win10 x64 config](https://github.com/hooke007/MPV_lazy)

- VLC
  - Windows, Linux, Android, macOS

- Directory Opus (v13)
  - Fast

> 最近折腾了一下视频播放器，不得不说想要良好的观看体验确实需要折腾不少东西
> 
> PotPlayer 就是一个典型例子，稍微正经点的教程都会告诉你解码不行装 [LAV](https://github.com/Nevcairiel/LAVFilters)、画面渲染不行装 [MadVR](https://forum.doom9.org/showthread.php?t=146228)、字幕渲染不行装 [xy-VSFilter](https://github.com/Masaiki/xy-VSFilter)。但折腾一圈后还是有打开文件慢、精确帧快进卡顿等问题，而且 MadVR 停更了（作者去搞 HDR measure 了）哪天不能用了都不奇怪。
> 
> MPC 系的 MPC-[HC](https://github.com/clsid2/mpc-hc) / [BE](https://github.com/Aleksoid1978/MPC-BE) 再加上 [MPCVR](https://github.com/Aleksoid1978/VideoRenderer) 相对来说有着不错的开箱即用性，但代价就是缺功能，字幕尽量在底部/黑边上显示、[Smooth Motion](https://github.com/mpv-player/mpv/wiki/Interpolation)（通过帧混合避免刷新率不是帧率整数倍时的 judder）之类的那是一个都没有。
> 
> VLC 没什么折腾空间直接 pass，那最后就只剩 [mpv](https://github.com/mpv-player/mpv) 了。mpv 完全没有开箱即用性，需要编写配置并配个 GUI 才能用且好用。流行的 [mpv.net](https://github.com/mpvnet-player/mpv.net) 之类的既不好看默认配置也不太行，看了一圈下来也只有 [MPV\_lazy](https://github.com/hooke007/MPV_lazy) 不错。
> 
> [MPV\_lazy](https://github.com/hooke007/MPV_lazy) 虽然不错但也需要折腾，比如[默认的字幕设置](https://github.com/hooke007/MPV_lazy/blob/b6b10a53fe86297ed0eef555172331b24bedcd08/portable_config/mpv.conf#L150)（字体、颜色、描边、模糊）我个人不太喜欢，[播放列表](https://github.com/hooke007/MPV_lazy/discussions/506)之类的功能默认没开可以手动打开。mpv 默认遵循 BT.1886 曲线 (Gamma 2.4) 观感会有些不一样，可以[手动改成 Gamma 2.2](https://github.com/hooke007/MPV_lazy/blob/b6b10a53fe86297ed0eef555172331b24bedcd08/portable_config/mpv.conf#L106)。此外想要播放历史也需要手动装 [simplehistory](https://github.com/dyphire/Eisa01_mpv-scripts/blob/dev/scripts/simplehistory.lua) 或 [recent-menu](https://github.com/natural-harmonia-gropius/recent-menu)。
> 
> 比较尴尬的是虽然 mpv 是跨平台的，但流行的整合版大都是 Windows 限定，非 Win 平台只能自己慢慢配了。macOS 上的 [IINA](https://github.com/iina/iina) 就是基于 mpv，Linux 上貌似没有特别有名的 GUI 前端。

[What Media Player do you use on Windows? : r/windows](https://www.reddit.com/r/windows/comments/1e66y1l/what_media_player_do_you_use_on_windows/)