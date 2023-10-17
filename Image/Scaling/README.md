# Image Scaling
[Wikipedia](https://en.wikipedia.org/wiki/Image_scaling)

[Upscale Wiki](https://upscale.wiki/wiki/Main_Page)

[The DEFINITIVE Comparison to Upscalers : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/y2mrc2/the_definitive_comparison_to_upscalers/)

- R-ESRGAN 4x+ Anime6B

  会导致部分物体放大后的质感变得像胶体或晶体；可以起到降噪效果。
  
- SwinIR_4x
  - [Swin2SR: SwinV2 Transformer for Compressed Image Super-Resolution and Restoration. Advances in Image Manipulation (AIM) workshop ECCV 2022](https://github.com/mv-lab/swin2sr)

    比 R-ESRGAN 慢很多；RealworldSR 对于 anime 图像的结果不如 R-ESRGAN 4x+ Anime6B 清晰，但对细节保留得更好，特别是液体。
  
    [Implement SwinIR v2 by C43H66N12O12S2 · Pull Request #2092 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/2092)

Stable Diffusion web UI 和 ComfyUI 都不能在 upscaling 时保留 transparent。
- [How to upscale while preserving transparency? - AUTOMATIC1111/stable-diffusion-webui - Discussion #5728](https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/5728)

## Deep convolutional neural networks
### waifu2x
[Wikipedia](https://en.wikipedia.org/wiki/Waifu2x)

[waifu2x: Image Super-Resolution for Anime-Style Art](https://github.com/nagadomi/waifu2x)
- [yu45020/Waifu2x: PyTorch on Super Resolution](https://github.com/yu45020/Waifu2x)
- [Waifu2x UpCunet on Pytorch](https://github.com/antonpaquin/waifu2x-cunet-pytorch)

[Real Cascade U-Nets for Anime Image Super Resolution](https://github.com/bilibili/ailab/tree/main/Real-CUGAN)
