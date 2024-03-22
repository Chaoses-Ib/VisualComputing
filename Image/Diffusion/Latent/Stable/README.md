# Stable Diffusion
[Wikipedia](https://en.wikipedia.org/wiki/Stable_Diffusion)

## Stable Diffusion 1
[GitHub](https://github.com/CompVis/stable-diffusion), [Paper](https://ommer-lab.com/research/latent-diffusion-models/)

Stable Diffusion 1.5:
- [runwayml/stable-diffusion: Latent Text-to-Image Diffusion](https://github.com/runwayml/stable-diffusion)
- [runwayml/stable-diffusion-v1-5 - Hugging Face](https://huggingface.co/runwayml/stable-diffusion-v1-5)

### Variational autoencoders
Image | Latent
--- | ---
512\*512 | 4\*64\*64
512\*768 | 4\*96\*64
1024\*512 | 4\*64\*128

> To avoid arbitrarily scaled latent spaces, we regularize the latent $z$ to be zero centered and obtain small variance by introducing an regularizing loss term $L_{reg}$.

Scale factor:
- [Explanation of the 0.18215 factor in textual\_inversion? - Issue #437 - huggingface/diffusers](https://github.com/huggingface/diffusers/issues/437)
  
  > The goal was to handle different latent spaces (from different autoencoders, which can be scaled quite differently than images) with similar noise schedules. The `scale_factor` ensures that the initial latent space on which the diffusion model is operating has approximately unit variance. Hope this helps :)

```python
AutoencoderKL(
  (encoder): Encoder(
    (conv_in): Conv2d(3, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
    (down_blocks): ModuleList(
      (0): DownEncoderBlock2D(
        (resnets): ModuleList(
          (0-1): 2 x ResnetBlock2D(
            (norm1): GroupNorm(32, 128, eps=1e-06, affine=True)
            (conv1): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 128, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
        (downsamplers): ModuleList(
          (0): Downsample2D(
            (conv): Conv2d(128, 128, kernel_size=(3, 3), stride=(2, 2))
          )
        )
      )
      (1): DownEncoderBlock2D(
        (resnets): ModuleList(
          (0): ResnetBlock2D(
            (norm1): GroupNorm(32, 128, eps=1e-06, affine=True)
            (conv1): Conv2d(128, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 256, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
            (conv_shortcut): Conv2d(128, 256, kernel_size=(1, 1), stride=(1, 1))
          )
          (1): ResnetBlock2D(
            (norm1): GroupNorm(32, 256, eps=1e-06, affine=True)
            (conv1): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 256, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
        (downsamplers): ModuleList(
          (0): Downsample2D(
            (conv): Conv2d(256, 256, kernel_size=(3, 3), stride=(2, 2))
          )
        )
      )
      (2): DownEncoderBlock2D(
        (resnets): ModuleList(
          (0): ResnetBlock2D(
            (norm1): GroupNorm(32, 256, eps=1e-06, affine=True)
            (conv1): Conv2d(256, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 512, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
            (conv_shortcut): Conv2d(256, 512, kernel_size=(1, 1), stride=(1, 1))
          )
          (1): ResnetBlock2D(
            (norm1): GroupNorm(32, 512, eps=1e-06, affine=True)
            (conv1): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 512, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
        (downsamplers): ModuleList(
          (0): Downsample2D(
            (conv): Conv2d(512, 512, kernel_size=(3, 3), stride=(2, 2))
          )
        )
      )
      (3): DownEncoderBlock2D(
        (resnets): ModuleList(
          (0-1): 2 x ResnetBlock2D(
            (norm1): GroupNorm(32, 512, eps=1e-06, affine=True)
            (conv1): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 512, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
      )
    )
    (mid_block): UNetMidBlock2D(
      (attentions): ModuleList(
        (0): AttentionBlock(
          (group_norm): GroupNorm(32, 512, eps=1e-06, affine=True)
          (query): Linear(in_features=512, out_features=512, bias=True)
          (key): Linear(in_features=512, out_features=512, bias=True)
          (value): Linear(in_features=512, out_features=512, bias=True)
          (proj_attn): Linear(in_features=512, out_features=512, bias=True)
        )
      )
      (resnets): ModuleList(
        (0-1): 2 x ResnetBlock2D(
          (norm1): GroupNorm(32, 512, eps=1e-06, affine=True)
          (conv1): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          (norm2): GroupNorm(32, 512, eps=1e-06, affine=True)
          (dropout): Dropout(p=0.0, inplace=False)
          (conv2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          (nonlinearity): SiLU()
        )
      )
    )
    (conv_norm_out): GroupNorm(32, 512, eps=1e-06, affine=True)
    (conv_act): SiLU()
    (conv_out): Conv2d(512, 8, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
  )
  (decoder): Decoder(
    (conv_in): Conv2d(4, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
    (up_blocks): ModuleList(
      (0-1): 2 x UpDecoderBlock2D(
        (resnets): ModuleList(
          (0-2): 3 x ResnetBlock2D(
            (norm1): GroupNorm(32, 512, eps=1e-06, affine=True)
            (conv1): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 512, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
        (upsamplers): ModuleList(
          (0): Upsample2D(
            (conv): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
        )
      )
      (2): UpDecoderBlock2D(
        (resnets): ModuleList(
          (0): ResnetBlock2D(
            (norm1): GroupNorm(32, 512, eps=1e-06, affine=True)
            (conv1): Conv2d(512, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 256, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
            (conv_shortcut): Conv2d(512, 256, kernel_size=(1, 1), stride=(1, 1))
          )
          (1-2): 2 x ResnetBlock2D(
            (norm1): GroupNorm(32, 256, eps=1e-06, affine=True)
            (conv1): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 256, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
        (upsamplers): ModuleList(
          (0): Upsample2D(
            (conv): Conv2d(256, 256, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          )
        )
      )
      (3): UpDecoderBlock2D(
        (resnets): ModuleList(
          (0): ResnetBlock2D(
            (norm1): GroupNorm(32, 256, eps=1e-06, affine=True)
            (conv1): Conv2d(256, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 128, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
            (conv_shortcut): Conv2d(256, 128, kernel_size=(1, 1), stride=(1, 1))
          )
          (1-2): 2 x ResnetBlock2D(
            (norm1): GroupNorm(32, 128, eps=1e-06, affine=True)
            (conv1): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (norm2): GroupNorm(32, 128, eps=1e-06, affine=True)
            (dropout): Dropout(p=0.0, inplace=False)
            (conv2): Conv2d(128, 128, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
            (nonlinearity): SiLU()
          )
        )
      )
    )
    (mid_block): UNetMidBlock2D(
      (attentions): ModuleList(
        (0): AttentionBlock(
          (group_norm): GroupNorm(32, 512, eps=1e-06, affine=True)
          (query): Linear(in_features=512, out_features=512, bias=True)
          (key): Linear(in_features=512, out_features=512, bias=True)
          (value): Linear(in_features=512, out_features=512, bias=True)
          (proj_attn): Linear(in_features=512, out_features=512, bias=True)
        )
      )
      (resnets): ModuleList(
        (0-1): 2 x ResnetBlock2D(
          (norm1): GroupNorm(32, 512, eps=1e-06, affine=True)
          (conv1): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          (norm2): GroupNorm(32, 512, eps=1e-06, affine=True)
          (dropout): Dropout(p=0.0, inplace=False)
          (conv2): Conv2d(512, 512, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
          (nonlinearity): SiLU()
        )
      )
    )
    (conv_norm_out): GroupNorm(32, 128, eps=1e-06, affine=True)
    (conv_act): SiLU()
    (conv_out): Conv2d(128, 3, kernel_size=(3, 3), stride=(1, 1), padding=(1, 1))
  )
  (quant_conv): Conv2d(8, 8, kernel_size=(1, 1), stride=(1, 1))
  (post_quant_conv): Conv2d(4, 4, kernel_size=(1, 1), stride=(1, 1))
)
```

[在StableDiffusion中说起VAE时,我们在谈论什么? - 知乎](https://zhuanlan.zhihu.com/p/599129815)

- None

  会导致画面的色彩比较淡。
- NovelAI (`nai.vae.pt`, `orangemix.vae.pt`, `Anything-V3.0.vae.pt`, `anything-v4.0.vae.pt`)

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

- Resolution

  > For SDXL, it is recommended to use trained values listed below:
  > - 1024 x 1024
  > - 1152 x 896
  > - 896  x 1152
  > - 1216 x 832
  > - 832  x 1216
  > - 1344 x 768
  > - 768  x 1344
  > - 1536 x 640
  > - 640  x 1536

  在低分辨率上效果不佳。

VAEs:
- [madebyollin/sdxl-vae-fp16-fix · Hugging Face](https://huggingface.co/madebyollin/sdxl-vae-fp16-fix)

[Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#sd-xl)
- [SD XL support by AUTOMATIC1111 · Pull Request #11757 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/11757)

[Anime Art Diffusion XL - alpha3 | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/117259/anime-art-diffusion-xl)

### Fine-tuned models
Anime:
- [anima\_pencil-XL - v1.5.0 | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/261336/animapencil-xl?modelVersionId=323674)
  - 偏向于非 loli
  - VAE 似乎有问题？
- [Animagine XL V3 - v3.0 | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/260267/animagine-xl-v3?modelVersionId=293564)
  - 多样性较差
  - 偏向于 small breasts、非 closed eyes

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
