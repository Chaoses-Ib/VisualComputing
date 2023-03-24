# Diffusion Models
[Wikipedia](https://en.wikipedia.org/wiki/Diffusion_model)

## Stable Diffusion
[Wikipedia](https://en.wikipedia.org/wiki/Stable_Diffusion), [GitHub](https://github.com/CompVis/stable-diffusion)

[High-Resolution Image Synthesis with Latent Diffusion Models - Computer Vision & Learning Group](https://ommer-lab.com/research/latent-diffusion-models/)

[The Illustrated Stable Diffusion – Jay Alammar – Visualizing machine learning one concept at a time.](https://jalammar.github.io/illustrated-stable-diffusion/)

Models:
- [Civitai | Stable Diffusion models, embeddings, hypernetworks and more](https://civitai.com/)
- [元素法典 LORA模型共享](https://t.me/loraeveryone)

Tools:
- [Stable Diffusion web UI](#stable-diffusion-web-ui)
- [Sygil-Dev/sygil-webui: Stable Diffusion web UI](https://github.com/Sygil-Dev/sygil-webui)

Services:
- [Stable Diffusion Online](https://stablediffusionweb.com/)
- [Stable Diffusion 2-1 - a Hugging Face Space by stabilityai](https://huggingface.co/spaces/stabilityai/stable-diffusion)
- [MajinAI](https://majinai.art/index.php)

Prompts:
- [词图PromptTool - AI绘画资料管理网站](https://www.prompttool.com/)
- [Lexica](https://lexica.art/)
- [PromptHero](https://prompthero.com/)
- [Danbooru: Anime Image Board](https://danbooru.donmai.us/)
  - [DeepDanbooru: AI based multi-label girl image classification system, implemented by using TensorFlow.](https://github.com/KichangKim/DeepDanbooru)
  - [Danbooru 标签导出器](https://sleazyfork.org/zh-CN/scripts/452976-danbooru-tags-select-to-export)
  - [Danbooru 标签超市](https://tags.novelai.dev/)
- [EasyNegative | Stable Diffusion TextualInversion | Civitai](https://civitai.com/models/7808/easynegative)
- [sd-promptbook](https://github.com/space-nuko/sd-promptbook/)
- [Stable Diffusion使用入门与提示词技巧 - 知乎](https://zhuanlan.zhihu.com/p/577238010)
- [元素法典——Novel AI 元素魔法全收录](https://docs.qq.com/doc/DWHl3am5Zb05QbGVs)
- [Textual Inversion](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Textual-Inversion)
  - [EasyNegative | Stable Diffusion TextualInversion | Civitai](https://civitai.com/models/7808/easynegative)

    ```
    easynegative
    ```

    异形率比较高。

### Stable Diffusion 1.5
[GitHub](https://github.com/runwayml/stable-diffusion), [Hugging Face](https://huggingface.co/runwayml/stable-diffusion-v1-5)

- [stabilityai/stable-diffusion-2-1 · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1) (768)
- [stabilityai/stable-diffusion-2-1-base · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1-base) (512)

### Stable Diffusion 2
[GitHub](https://github.com/Stability-AI/stablediffusion)

[Stable Diffusion 1 vs 2 - What you need to know](https://www.assemblyai.com/blog/stable-diffusion-1-vs-2-what-you-need-to-know/)

### [Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
[Features · AUTOMATIC1111/stable-diffusion-webui Wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features)

[【AI绘画】从零开始的AI绘画入门教程——魔法导论 - 哔哩哔哩](https://www.bilibili.com/read/cv22159609)
- [AI绘画教程：从入门到放弃(xiaobai) - 知乎](https://zhuanlan.zhihu.com/p/607892849)
- [stable diffusion webui的简易入门 - 知乎](https://zhuanlan.zhihu.com/p/610298913)
- [\[闲聊杂谈\] \[ai绘画教程\]手把手教你获得赛博老公老婆的cos图集 \[教程\]\[搬运\] 178](https://nga.178.com/read.php?tid=35435044)

[【授之以渔】关于AI涩图绘制的一点经验（91L更新炼丹心得） - 卓明谷 - Stage1st - stage1/s1 游戏动漫论坛](https://stage1st.com/2b/forum.php?mod=viewthread&action=printable&tid=2098415)

[Custom Images Filename Name and Subdirectory · AUTOMATIC1111/stable-diffusion-webui Wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Custom-Images-Filename-Name-and-Subdirectory)
- Default: `number-[seed]-[prompt_spaces]`
- `number-[model_name]-[seed]`

Size:
- 图像的比例也会影响图像的内容，不合适的比例可能会导致异形率增加。
  - 0.7: 448x640, 896x1280
- 改变分辨率会影响 seed 的结果，但改变模型不一定会。

[出精图必备！SD webui更多强大的功能！(Novel AI) - 哔哩哔哩](https://www.bilibili.com/read/cv19211897?from=articleDetail)

[Inpainging & Outpainting](https://rentry.org/drfar)
- Inpaint 可能会与原图产生色差，将 inpaint 结果通过低 denoising strength 的 img2img 再次处理可以缓解这一问题，但会导致整幅图发生变化；也可以使用 Photoshop 手动修复。
- 也可以直接使用 Photoshop 等工具手动粗略修复图像，再通过 img2img 细化。
- 同时修复多个部位比单独修复每个部位困难。
- Inpaint sketch 尽管可以指定颜色，但经常会修改到 mask 之外的内容，有时还会生成无关的图像。一种替代方法是把 inpaint sketch 中涂改好的图像发送到 inpaint，再绘制 mask，将 original 作为 masked content 来进行 inpaint。
- 实在无法修复时，也可以考虑只截取图像的正常部分。

[玩了一段时间的sd-webui，简单聊聊我觉得目前ai作画存在的一些痛点，也是当前手工作业很难取代之处 NGA玩家社区](https://g.nga.cn/read.php?tid=35710972&rand=594)

[Optimizations](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Optimizations)
- `--xformers`
- `--opt-split-attention --opt-sub-quad-attention --medvram`

Automation:
- Btach
- [X/Y/Z plot](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#xyz-plot)

  ```
  1-5 = 1, 2, 3, 4, 5
  1-5 (+2) = 1, 3, 5
  1-10 [5] = 1, 3, 5, 7, 10
  ```
- [Kryptortio/SDAtom-WebUi-us: Queue system for AUTOMATIC1111's webui](https://github.com/Kryptortio/SDAtom-WebUi-us)

  [I made a queue system for Automatic1111's Stable Diffusion WebUI so you don't have to wait for each prompt to complete : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/zq0wl9/i_made_a_queue_system_for_automatic1111s_stable/)

Training:
- [Checkpoint Merger](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#checkpoint-merger)
- [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)

## DALL-E 2
[Two years after DALL-E debut, its inventor is "surprised" by impact | VentureBeat](https://venturebeat.com/ai/two-years-after-dall-e-debut-its-inventor-is-surprised-by-impact/)

## Ohters
- [DisillusionMix 幻灭 | Civitai](https://civitai.com/models/16052/disillusionmix)

  VAE: `vae-ft-mse-840000-ema-pruned.ckpt`
- [Cornflower \[Stylized Anime Model w/nsfw support\] | Civitai](https://civitai.com/models/5415/cornflower-stylized-anime-model-wnsfw-support)

  ```
  cornflower
  ```

  NSFW 异形率比较高。

- [Furnace 10,11 | Civitai](https://civitai.com/models/21578/furnace-1011)
- [MSA-MIX | Civitai](https://civitai.com/models/7045/msa-mix)
- [Cetus-Mix | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/6755/cetus-mix)
- [Macaron-mix | Civitai](https://civitai.com/models/11069/macaron-mix)
- [WhiteSpace | Civitai](https://civitai.com/models/12933/whitespace)
- [MaeggnMaeggn_Mix | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/14238/maeggnmaeggnmix)
- Colorful
  - [multicolor.v2 | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/8041/multicolorv2)

    ```
    1girl, masterpiece, extremly detailed, ((Cinematic lighting)), (glowing), ((dramatic lighting)), ((beautiful detailed glow)), intricate detail, lens flare, finely detailed beautiful face and eyes
    Steps: 30, Sampler: DPM++ 2M Karras, CFG scale: 7, Size: 768x512, Model hash: 2be93e78cc, Model: multicolor.v2, Denoising strength: 0.57, Clip skip: 2, Hires upscale: 2, Hires upscaler: Latent (nearest)
    ```
  - [powercolor.v2 | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/6167/powercolorv2)
- [pastelabyss | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/7794/pastelabyss)
- [LulubearMix | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/18934/lulubearmix)
- [0.6(CounterfeitV25)0.25(Anything4.5)0.15(PastelMix) | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/22387/06counterfeitv25025anything45015pastelmix)
- [0.4(pastelmix-fp16) + 0.6(Counterfeit-V2.5_fp16).ckpt | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/15036/04pastelmix-fp16-06counterfeit-v25fp16ckpt)
- [ken_cor+coun+past+adlcv3a+adlcv3p | Civitai](https://civitai.com/models/6602/kencorcounpastadlcv3aadlcv3p)
- [aaa | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/11339/aaa)
- [三相之力 | Civitai](https://civitai.com/models/15899)
- [LemonPieMix | Stable Diffusion Checkpoint | Civitai](https://civitai.com/models/19680/lemonpiemix)
- [Three Delicacy Wonton (三餡馄饨Mix) | Civitai](https://civitai.com/models/20330/three-delicacy-wonton-mix)
- [AnyOrangeMix - Anything v4.5 + AbyssOrangeMix 3 | Civitai](https://civitai.com/models/21503/anyorangemix-anything-v45-abyssorangemix-3)
- [Ligne Claire Anime | Civitai](https://civitai.com/models/3852/ligne-claire-anime)

  ```
  ligne claire,
  flat color, limited palette, low contrast, high contrast, chromatic aberration
  ```
- [yden | Civitai](https://civitai.com/models/18616/yden)
- [(checkpoint) ligne clair style(cogecha焦茶) | Civitai](https://civitai.com/models/10466/checkpoint-ligne-clair-stylecogecha)

- [HoloKuki | Civitai](https://civitai.com/models/17598/holokuki)

  需要比较多的 prompts 才能保证生成对应角色。
- [AniFuture-mirai [未来写实] | Civitai](https://civitai.com/models/21007/anifuture-mirai)

  VAE: `mse840000_klf8anime.vae.pt`

α:
- [Pastel Mix](https://huggingface.co/andite/pastel-mix) ([Civitai](https://civitai.com/models/5414/pastel-mix-stylized-anime-model))

  VAE: `pastel-waifu-diffusion.vae.pt`

  偏向 SFW。
- [9527 | Civitai](https://civitai.com/models/6204/9527)

β:
- [Counterfeit-V2.5](https://huggingface.co/gsdf/Counterfeit-V2.5) ([Civitai](https://civitai.com/models/4468/counterfeit-v25))
- [OrangeMixs](https://huggingface.co/WarriorMama777/OrangeMixs)
  - [AbyssOrangeMix3 (AOM3) | Civitai](https://civitai.com/models/9942/abyssorangemix3-aom3)

    ```
    Negative prompt: nsfw, (worst quality, low quality:1.4), (lip, nose, tooth, rouge, lipstick, eyeshadow:1.4), ( jpeg artifacts:1.4), (depth of field, bokeh, blurry, film grain, chromatic aberration, lens flare:1.0), (1boy, abs, muscular, rib:1.0), greyscale, monochrome, dusty sunbeams, trembling, motion lines, motion blur, emphasis lines, text, title, logo, signature,
    Steps: 20, Sampler: DPM++ SDE Karras
    ```
        默认的 20 步 sampling 可能会导致生成的图像不够精细。
- [Anything V4](https://huggingface.co/andite/anything-v4.0)
  - [Anything V3 | Civitai](https://civitai.com/models/9409/anything-v3)
- [MeinaHentai | Civitai](https://civitai.com/models/12606/meinahentai)

γ:
- [OrangeChillMix | Civitai](https://civitai.com/models/9486/orangechillmix)
- [AOAOKO \[PVC Style Model\] | Civitai](https://civitai.com/models/15509/aoaoko-pvc-style-model)
