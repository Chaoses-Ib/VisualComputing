# Video Enhancement
- Edge enhancement
- Compression artifact reduction
- Scaling (Super resolution)
- Frame interpolation

## Players
### Browsers
- Windows: Media Foundation

  [AMD Video Upscale, Streaming Enhancements, and Mor... - AMD Community](https://community.amd.com/t5/gaming/amd-video-upscale-streaming-enhancements-and-more/ba-p/669353)
  - Media Foundation for Clear

- Edge: [Enhance video](https://www.microsoft.com/en-us/edge/features/enhance-video)
  - Vivid mode
    - Edge enhancement

    Suitable for low-bitrate videos, like streaming.
  - Super resolution

    > What conditions are needed to be able to use the super resolution option?
    > - The device has one of the following graphics cards (GPUs): Nvidia RTX 20/30/40 series (with Nvidia driver > 528.24) or AMD RX5700-RX7900 series GPUs.
    > - The video is played at less or equal to 1080p resolution.
    > - The device is not on battery power.
    > - Both the height and width of the video are greater than 192 pixels.
    > - The video is not protected with Digital Rights Management technologies like PlayReady or Widevine. Frames from these protected videos are not accessible to the browser for processing.

    [Video super resolution in Microsoft Edge - Microsoft Edge Blog](https://blogs.windows.com/msedgedev/2023/03/08/video-super-resolution-in-microsoft-edge/)
    > We are working on automatic Hybrid GPU support for laptops with multiple GPUs. Meanwhile, you can try VSR by changing Windows settings to force Edge to run on your discrete GPU.

    Two years later and still working on?
  - Graphics driver enhancement

    > Enhance video has a third option available to users which allows you to choose from select third party graphics card options that have video enhancing features available. To use this option, go to “Enhance videos in Microsoft edge” within settings and choose the graphics driver enhancement option.

  > Enhance video allows most users to experience boosted video quality without the need of specialized GPUs. Super resolution (preview) on the other hand uses machine learning to enhance the quality of videos viewed in Microsoft Edge by removing blocky compression artifacts and upscaling the video resolution, so you can enjoy crisp and clear videos without sacrificing bandwidth.

  [Enhance video just makes colors dull? Any other features that don't quite work right? : r/MicrosoftEdge](https://www.reddit.com/r/MicrosoftEdge/comments/1eikauo/enhance_video_just_makes_colors_dull_any_other/)

  [What's the difference between the 3 modes of video enhancement in Edge Settings under System and Performance? : r/MicrosoftEdge](https://www.reddit.com/r/MicrosoftEdge/comments/1chfmbx/whats_the_difference_between_the_3_modes_of_video/)

  [Having used "Enhance" feature on videos, I realized I've been watching blurry videos. : r/MicrosoftEdge](https://www.reddit.com/r/MicrosoftEdge/comments/1c73bph/having_used_enhance_feature_on_videos_i_realized/)

- Chrome
  - NVIDIA RTX VSR

- Firefox
  - NVIDIA RTX VSR (v126)

  [Mozilla Firefox Adds AI-Powered RTX Video | NVIDIA Blog](https://blogs.nvidia.com/blog/ai-decoded-rtxvideo-firefox/)

  [Video upscaling in browser video players using AMD... - Mozilla Connect](https://connect.mozilla.org/t5/ideas/video-upscaling-in-browser-video-players-using-amd-fidelityfx-or/idi-p/15928#comments)

- Opera: [Lucid Mode](https://www.opera.com/features/lucid-mode)
