#import "@local/ib:0.1.0": *
#show: ib
#title[RTX Video Enhancements]
#a[RTX Video FAQ | NVIDIA][https://nvidia.custhelp.com/app/answers/detail/a_id/5448/~/rtx-video-faq]

#quote[RTX Video is a collection of real time AI based video enhancements that
GeForce RTX GPU owners can use to improve the quality of video played on
their PC - either on a browser like Chrome or a video player like VLC.
The technologies currently under RTX Video include:]
- RTX Video Super Resolution
- RTX Video HDR

vs. DLSS:
- Does RTX Video Super Resolution leverage DLSS in any way?
  Are there any learnings from DLSS that you were able to apply to RTX Video Super Resolution?

  #quote(block: true)[
  They are two completely different technologies with different training and data inputs. It does not leverage DLSS technology and is a completely new algorithm.
  - RTX Video Super Resolution infers higher resolution frames based purely on the input / lower resolution video frame. It only works on video content.
  - DLSS uses game engine data (motion vectors, depth buffers, etc) to do Super Resolution and Frame Generation for games. It doesn’t work on streamed video. DLSS 3 offers DLSS Super Resolution, DLSS Frame Generation, and NVIDIA Reflex low latency and uses motion vectors, optical flow, temporal and other game engine data.
  ]

= SDK
- OS: Windwos 10+ 64-bit (x64/ARM64)
- API support: DX11, DX12, Vulcan, CUDA
- Supported GPU: GeForce RTX 20 series or newer, (Turing) NVIDIA RTX 1000 or higher
- DLL (optional): `nvngx_vsr.dll`, `nvngx_truehdr.dll`

#a[RTX Video SDK | NVIDIA Developer][https://developer.nvidia.com/rtx-video-sdk]
- Has login wall, but doesn't really auth.

  https://developer.download.nvidia.com/rtx/sdk/RTX_Video_SDK_v1.1.0.zip
  - `?t=eyJscyI6ImdzZW8iLCJsc2QiOiJodHRwczovL3d3dy5nb29nbGUuY29tLyJ9`
    (```json {"ls":"gseo","lsd":"https://www.google.com/"}```)

The API can be used as a common hook point of video playing.

= RTX Video Super Resolution
#a-badge[https://en.wikipedia.org/wiki/Video_Super_Resolution]

#a[Pixel Perfect: RTX Video Super Resolution Now Available | NVIDIA Blog][https://blogs.nvidia.com/blog/rtx-video-super-resolution/]

- What video will RTX Video Super Resolution enhance?

  #quote[
  Most video played in supported browsers can be enhanced by RTX Video Super Resolution.
  RTX Video Super Resolution supports video input resolutions from 360p to 1440p.
  Video we have identified as not supported includes some DRM protected content and YouTube shorts.
  ]

- Will RTX Video Super Resolution be enabled if video is displayed at native/lower resolution?
  Does RTX Video Super Resolution enhance downscaling?

  #strike[
  #quote[No, RTX Video Super Resolution will only be enabled if the video requires upscaling.]
  ]

  v1.5 (#t[2310]) will de-artifact video played at native resolution (e.g. output resolution matches video source).
  - #a[英伟达 RTX VSR 新特性：1080p 显示器看 1080p 直播时增强视频效果 - IT之家][https://www.ithome.com/0/725/795.htm]
  - Enabled in browsers, but not in PotPlayer.

- What happens if I have 2 videos playing at the same time.

  #quote[RTX Video will enhance the video most recently put in focus.
  This is true for single or multiple monitor setups.]

- #quote[RTX Video Super Resolution will not be active when a game is using
  NVIDIA Image Scaling (NIS), Dynamic Super Resolution (DSR) or Deep Learning Dynamic Super Resolution (DLDSR).
  ]

#a[【心得】RTX Video Super Resolution 觸發方式測試與顯卡溫度、功耗測試；Edge VSR比較 \@電腦應用綜合討論 哈啦板 - 巴哈姆特][https://forum.gamer.com.tw/C.php?bsn=60030&snA=620119]

= RTX Video HDR

= Tools
- #a[abus-aikorea/rtx-upscaler: A Gradio-based GUI for enhancing old/low-quality videos with NVIDIA RTX technology. Using Maxine Video Effects SDK, this tool applies AI-powered Super Resolution and Artifact Reduction. Perfect for restoring vintage videos and enhancing low-resolution footage with real-time GPU acceleration.][https://github.com/abus-aikorea/rtx-upscaler]

= Apps
- Browsers
  - [x] Electron: #a[\[Feature Request\]: Support for NVIDIA RTX VSR - Issue \#40054 - electron/electron][https://github.com/electron/electron/issues/40054]

- PotPlayer
  - Built-in Direct3D 11 Video Renderer (v1.7.21902)
    - D3D11 GPU Super Resolution
      - Disabled if played at native resolution
    - D3D11 GPU RTX Video HDR

    #a[Guide: How to enable GPU Super Resolution in Pot Player 230405 : r/potplayer][https://www.reddit.com/r/potplayer/comments/12vgrr7/guide_how_to_enable_gpu_super_resolution_in_pot/]
  - MPC Video Renderer
    - #a[emoose/VideoRenderer: RTX HDR modded into MPC-VideoRenderer.][https://github.com/emoose/VideoRenderer]

  #a[你就是猴子也能学会！基于PotPlayer的RTX视频超分辨率教程 - 知乎][https://zhuanlan.zhihu.com/p/686307071]

- MPC

  #a[Nvidia VSR doesnt work anymore - Issue \#3684 - clsid2/mpc-hc][https://github.com/clsid2/mpc-hc/issues/3684]

- VLC

  #a[RTX Super Resolution still not working : r/VLC][https://www.reddit.com/r/VLC/comments/1bcoq42/rtx_super_resolution_still_not_working/]

- [ ] Telegram
  - `Hardware accelerated video decoding` isn't enough.

  #a[Video Upscale - Issue \#28833 - telegramdesktop/tdesktop][https://github.com/telegramdesktop/tdesktop/issues/28833]
