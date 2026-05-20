#import "@local/ib:0.1.0": *
#show: ib
#title[Video Scaling]
= Video super-resolution
#a-badge[https://en.wikipedia.org/wiki/Video_super-resolution]

- Batch [image scaling](../Image/Scaling/README.md)
- ...

== Models
- #a[Artoriuz/ArtCNN: Simple SISR CNNs aimed at anime content][https://github.com/Artoriuz/ArtCNN]
- #t[2510]
  #a[OpenImagingLab/FlashVSR: [CVPR 2026] Towards Real-Time Diffusion-Based Streaming Video Super-Resolution --- An efficient one-step diffusion framework for streaming VSR with locality-constrained sparse attention and a tiny conditional decoder.][https://github.com/OpenImagingLab/FlashVSR]

#a[OpenModelDB][https://openmodeldb.info/]

== Libraries
- [BasicSR: Open Source Image and Video Restoration Toolbox for Super-resolution, Denoise, Deblurring, etc. Currently, it includes EDSR, RCAN, SRResNet, SRGAN, ESRGAN, EDVR, BasicVSR, SwinIR, ECBSR, etc. Also support StyleGAN2, DFDNet.](https://github.com/XPixelGroup/BasicSR) (China)

== Tools
- #a[Video2X: A lossless video/GIF/image upscaler achieved with waifu2x, Anime4K, SRMD and RealSR. Started in Hack the Valley II, 2018.][https://github.com/k4yt3x/video2x/]
  (China)
- #a[VSET: 基于Vapoursynth的图形化视频批量压制处理工具，超分辨率，补帧，vs滤镜一应俱全。][https://github.com/NangInShell/VSET]
- #a[Topaz Video AI][https://www.topazlabs.com/topaz-video-ai]
  (paid)

== Real-time
- RTX Video Super Resolution
  #a-badge[https://en.wikipedia.org/wiki/Video_Super_Resolution]
  #footnote[#a[Is there any better upscaling shaders for real world contents nowadays? : r/mpv][https://www.reddit.com/r/mpv/comments/1kvmd2e/is_there_any_better_upscaling_shaders_for_real/]]
  - Widely available.

  #a[Pixel Perfect: RTX Video Super Resolution Now Available | NVIDIA Blog][https://blogs.nvidia.com/blog/rtx-video-super-resolution/]

- madVR
  #footnote[#a[madVR still worth it? : r/htpc][https://www.reddit.com/r/htpc/comments/1gy55x3/madvr_still_worth_it/]]

- AnimeJaNai (mpv-upscale-2x_animejanai)
  - Probably the best for anime.
    #footnote[
    #a[Is AnimeJaNai a good anime upscaler for mpv? : r/animepiracy][https://www.reddit.com/r/animepiracy/comments/1t21hzj/is_animejanai_a_good_anime_upscaler_for_mpv/]
    #a-badge[https://www.reddit.com/r/mpv/comments/1t21i93/is_animejanai_a_good_anime_upscaler_for_mpv/]
    ]

- ArtCNN

#q[
AnimeJanai is hands down the best both in quality and detail retention. Version 3 in particular is great but it uses a lot of GPU horsepower. It takes 36% of my 4090 with the ultra compact model upscaling videos below 1080p to 1080p.

RTX super resolution doesn't really provide that big a clarity boost and it removes fine detail. It's mostly intended for improving streaming video quality and thus it's not really that good at improving local video playback quality. It's performance hit is lower than the lastest AnimeJanai models but the older AnimeJanai models are less demanding and still better qualtiy.

As far as I'm aware, only MadVR Envy supports AI upscaling. Other upscaling methods built into MadVR aren't really anything special that you can't already get in MPV player.

Anime4K is not worth considering. It was last updated in 2021 and it's trash compared to newer AI models. It'd be like comparing SD 1.5 vs Flux.

Another user recommended Lossless scaling but I don't see the point when Magpie does the same thing, is free, and is more customizable. The downside with programs like Magpie / lossless scaling is you have to keep them running 24/7 on your system so that they active a profile when you launch your video player. It's not a downside any of the other solutions has here.

If I had to rank them it'd be AnimeJanai v3 > AnimeJanai V2 / V1 > RTX Super resolution > MadVR > Magpie / Lossless scaling > Anime4K
]
#footnote[#a[Anime Upscaling with Nvidia, so many option! : r/nvidia][https://www.reddit.com/r/nvidia/comments/1keeapf/anime_upscaling_with_nvidia_so_many_option/]]

#q[
They look different. MadVR looks sharper and smoother on a pixel level, it's noticeable mostly on hair, lines and fine textures, it mostly manipulates what's already there. VSR on the other hand, adds or hallucinates details to the image.
It can look good but it can also look more artificial/synthetic and at the current highest settings it adds really weird skin artefacts, especially to asian faces, that looks really bad, like bumpy wrinkled skin.
Perhaps this will get fixed in future updates but I don't use VSR at the moment but I do use MadVR NGU upscaler for 1080p content, especially anime.

In the end, the best thing you can do is test it yourself.
]
#footnote[#a[Is NVIDIA RTX Video Super Resolution better than Madvr in video upscaling/enhancement? : r/htpc][https://www.reddit.com/r/htpc/comments/1m5fxa0/is_nvidia_rtx_video_super_resolution_better_than/]]

#q[This is pretty old, but AnimeJanai does a good ass job upscaling. It has less artifacting than Anime4k by a mile. They have a sharp model too that doesn't sharpen enough to introduce artifacting]
#footnote[#a[Upscaling anime : r/animepiracy][https://www.reddit.com/r/animepiracy/comments/18dmuga/upscaling_anime/]]

#q[
(AnimeJaNai)
Even on the best quality setting, the background is hilariously oversharpened in the kobayashi-san shot.
The wall corner is so sharp that it's actually distracting from the focus of the shot because it's in the center.
Almost all the dark lines have their darkness increased for no reason.
Even ignoring the line thinning, the thicknesses of every line look far more variable than they do using the basic lanczos upscale and it actually makes objects look poorly drawn, as though the artists have no idea how to use line weight.
This is a disaster and I have no idea how you think it's acceptable.

While some of the comparisons are surprisingly passable (like the KLK shot), others (like the fate/zero shot or the kobayashi-san shot) really show the limitations of the upscaler.
At the end of the day, it just doesn't do a very good job overall and introduces artifacts whenever the presentation deviates from an alarmingly specific kind of shot and artstyle.

- These are better, certainly, though there are still some issues with improperly determining a shot's "focus" (e.g., the saekano comparison); linethinning (though to a lesser degree than before); unnecessarily denoising the image (KLK has all the grain stripped); and denoising and darkening lines (most obvious in the bebop comparison).
  It's an impressive improvement, but I'd still be uncomfortable using it.
]
#footnote[#a[What's your experience witch watching movies/animes on 1440P : r/Monitors][https://www.reddit.com/r/Monitors/comments/14sotmz/whats_your_experience_witch_watching_moviesanimes/]]

#q[
Both of these are easy to setup and realtime.
- Anime4k: really popular but also extremely destructive.
- animejanai: a good middle ground
]
#footnote[#a[Have we gotten anything better for anime upscaling in the last half decade? : r/anime][https://www.reddit.com/r/anime/comments/1hu8lg3/have_we_gotten_anything_better_for_anime/]]

#q[
I know some encoding groups that have their own AI models to make DVD anime with specific problems look close to what a WEB-DL version would be, but they are still in early stages of development and are private. I've seen the results and such models look promising but it's still early for such technology.

You have open-source models for general uses of course, but they have many problems as well and every DVD comes with different issues, using a general model won't produce optimal results or simply image quality will be terrible.

I suggest you just grab the best release of each anime and use a player that support adaptive-sharpen and other shaders instead of going through the AI enhancement route, you will get less blurry lines and you don't destroy details in the process.
If you want to upscale and have powerful hardware, check out *AnimeJanai-v3*, so far the best real-time upscaler i've seen for anime.
]
#footnote[#a[Some noob advice on how to enhance old OVAs with AI? : r/animepiracy][https://www.reddit.com/r/animepiracy/comments/1i1m6yz/some_noob_advice_on_how_to_enhance_old_ovas_with/]]

#q[
While Anime4k looks good for characters and some other scenes, it messes up everything else. Generally not recommended. You can try using only the ThinLine shader, and change its values accordingly.

If you have a strong system, I highly recommend this: mpv-upscale-2x_animejanai
]
#footnote[#a[so, about shader for anime... : r/mpv][https://www.reddit.com/r/mpv/comments/1aljukf/so_about_shader_for_anime/]]

Discussions:
- 2023-03 [How to upscale videos for free? : r/VideoEditing](https://www.reddit.com/r/VideoEditing/comments/11p7wpb/how_to_upscale_videos_for_free/)
- 2023-10 [Alternatives to RTX video super resolution? : r/nvidia](https://www.reddit.com/r/nvidia/comments/17cz2no/alternatives_to_rtx_video_super_resolution/)