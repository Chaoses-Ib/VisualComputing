# Stable Diffusion
[Wikipedia](https://en.wikipedia.org/wiki/Stable_Diffusion), [GitHub](https://github.com/CompVis/stable-diffusion)

## Stable Diffusion 1
[GitHub](https://github.com/runwayml/stable-diffusion)

Stable Diffusion 1.5:
- [runwayml/stable-diffusion-v1-5 - Hugging Face](https://huggingface.co/runwayml/stable-diffusion-v1-5)

### VAEs
- None

  会导致画面的色彩比较淡。
- NovelAI (`nai.vae.pt`, `orangemix.vae.pt`, `Anything-V3.0.vae.pt`)

  饱和度相对较低，看起来更加柔和；体积很大，是其它 VAE 的两倍多；容易导致 `NansException`。
- `mse840000_klf8anime.vae.pt`

  亮度较高；色调偏红；会减少画面中的微小物体。
- [stabilityai/sd-vae-ft-mse-original](https://huggingface.co/stabilityai/sd-vae-ft-mse-original) (`vae-ft-mse-840000-ema-pruned.ckpt`)
- `pastel-waifu-diffusion.vae.pt`

  亮度比 mse840000 稍高。
- [Blessed VAE](https://huggingface.co/NoCrypt/blessed_vae)
  - `blessed-fix.vae.pt`

    亮度很高；容易导致 `NansException`。
  - `blessed2.vae.pt`
  
    亮度比 blessed-fix 稍低，但还是很高；容易导致 `NansException`。

[try using different vae : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/11ys8ww/try_using_different_vae/)

![](https://preview.redd.it/rr7gbdqfcjpa1.jpeg?width=2656&format=pjpg&auto=webp&v=enabled&s=8b8cd4e6a3e2c329f518bfde26895560fd996af7)

![](https://s3.amazonaws.com/moonup/production/uploads/1678275640402-62de447b4dcb9177d4bd876c.png)

## Stable Diffusion 2
[GitHub](https://github.com/Stability-AI/stablediffusion)

[Stable Diffusion 1 vs 2 - What you need to know](https://www.assemblyai.com/blog/stable-diffusion-1-vs-2-what-you-need-to-know/)

Stable Diffusion 2.1:
- [stabilityai/stable-diffusion-2-1 · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1) (768)
- [stabilityai/stable-diffusion-2-1-base · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1-base) (512)

## [Stable Diffusion XL](https://stablediffusionxl.com/)
- [stabilityai/stable-diffusion-xl-base-1.0 · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0)

VAEs:
- [madebyollin/sdxl-vae-fp16-fix · Hugging Face](https://huggingface.co/madebyollin/sdxl-vae-fp16-fix)

[Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#sd-xl)
- [SD XL support by AUTOMATIC1111 · Pull Request #11757 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/11757)

[Anime Art Diffusion XL - alpha3 | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/117259/anime-art-diffusion-xl)

## Fine-tuned models
- [Civitai | Stable Diffusion models, embeddings, hypernetworks and more](https://civitai.com/)
  - [Civitai Helper2: Model Info Helper: Stable Diffusion Webui Extension for Civitai, to manage your model much more easily.](https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper/tree/main)

Anime styles:
- [NovelAI Diffusion](NovelAI.md)
- [Waifu Diffusion](https://github.com/harubaru/waifu-diffusion)
- [TrinArt Stable Diffusion_v2](https://huggingface.co/naclbit/trinart_stable_diffusion_v2?continueFlag=15536bed1e034a7d436f2d0584e6fa6b)
- [Taiyi-Stable-Diffusion-1B-Anime-Chinese-v0.1](https://huggingface.co/IDEA-CCNL/Taiyi-Stable-Diffusion-1B-Anime-Chinese-v0.1)

## Services
- [Stable Diffusion Online](https://stablediffusionweb.com/)
- [Stable Diffusion 2-1 - a Hugging Face Space by stabilityai](https://huggingface.co/spaces/stabilityai/stable-diffusion)
- [MajinAI](https://majinai.art/index.php)
