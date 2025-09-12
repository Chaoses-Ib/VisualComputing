# [PotPlayer](https://potplayer.daum.net/)
[Wikipedia](https://en.wikipedia.org/wiki/PotPlayer)

- `scoop install potplayer`
- [Update history](https://t1.daumcdn.net/potplayer/PotPlayer/v4/Update2/UpdateEng.html)

[Windows 的最佳视频播放器：PotPlayer | Best Of - 少数派](https://sspai.com/post/56687) (paid, [什么值得买](https://post.smzdm.com/p/a5klqqx8/))

[基于 PotPlayer 和 madVR 的播放器教程 | VCB-Studio](https://vcb-s.com/archives/7228)

## Playback
- Time jump: Time jump interval 默认为 5 秒，比较长，同时还会 jump to keyframe，可能会长达十几秒

## Video
### Video capture
- Copy: `Ctrl+C`, Save: `Ctrl+E`
- Formats: BMP, JPEG, PNG, WEBP
  - WEBP is much smaller than PNG and JPEG but also has lower quality. There is no option to set quality for formats.
  - In v241211, WEBP has different color (lower saturation) than other formats. It was later fixed in the next version v250226.
- Can only include system time or file elapsed time, not both
  - File elapsed time should be better, since system time will also be in file metadata anyway, and elapsed time can also be used to sort
- Location is in Preferences
- Subtitles
  - "Include message and subtitles in image" has no hotkey, but can be mimicked by "Show/Hide Subtitles" (`Alt+H`).
  - "Save Current Source Frame" (`Ctrl+E`) without "Include message and subtitles in image":
    ```ahk
    ; "Include message and subtitles in image" should be enabled
    ^+e::
    {
        Send "!h"
        Sleep 200
        Send "^e!h"
    }
    ```

## Plugins
- [LAV Filters: Open-Source DirectShow Media Splitter and Decoders](https://github.com/Nevcairiel/LAVFilters)
- [madVR: high quality video renderer (GPU assisted) - Doom9's Forum](https://forum.doom9.org/showthread.php?t=146228)

  [07.关于madVR的故事 - 哔哩哔哩](https://www.bilibili.com/opus/861664550919864339)

  [What does madVR offer in typical use? : r/htpc](https://www.reddit.com/r/htpc/comments/wk297y/what_does_madvr_offer_in_typical_use/)

  [我就问问大家。POTPLAYER用MADVR和全默认的区别在哪里，4K+HDR 10BIT片源 NGA玩家社区](https://bbs.nga.cn/read.php?tid=35658623&rand=533)
  > madvr最大的优势就是在于拉升分辨率，1080拉到4k这种开不开madvr区别很大，本来就是4k10bit片源的话，说实话肉眼基本看不出来区别

- [Masaiki/xy-VSFilter: xy-VSFilter variant with libass backend](https://github.com/Masaiki/xy-VSFilter)
