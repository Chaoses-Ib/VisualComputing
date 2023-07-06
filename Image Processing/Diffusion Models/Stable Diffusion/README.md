# Stable Diffusion
[Wikipedia](https://en.wikipedia.org/wiki/Stable_Diffusion), [GitHub](https://github.com/CompVis/stable-diffusion)

## Models
- [Civitai | Stable Diffusion models, embeddings, hypernetworks and more](https://civitai.com/)
  - [Civitai Helper2: Model Info Helper: Stable Diffusion Webui Extension for Civitai, to manage your model much more easily.](https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper/tree/main)

### Stable Diffusion 1.5
[GitHub](https://github.com/runwayml/stable-diffusion), [Hugging Face](https://huggingface.co/runwayml/stable-diffusion-v1-5)

- [stabilityai/stable-diffusion-2-1 · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1) (768)
- [stabilityai/stable-diffusion-2-1-base · Hugging Face](https://huggingface.co/stabilityai/stable-diffusion-2-1-base) (512)

### Stable Diffusion 2
[GitHub](https://github.com/Stability-AI/stablediffusion)

[Stable Diffusion 1 vs 2 - What you need to know](https://www.assemblyai.com/blog/stable-diffusion-1-vs-2-what-you-need-to-know/)

### Anime styles
- [NovelAI Diffusion](https://novelai.net/)
- [Waifu Diffusion](https://github.com/harubaru/waifu-diffusion)
- [TrinArt Stable Diffusion_v2](https://huggingface.co/naclbit/trinart_stable_diffusion_v2?continueFlag=15536bed1e034a7d436f2d0584e6fa6b)
- [Taiyi-Stable-Diffusion-1B-Anime-Chinese-v0.1](https://huggingface.co/IDEA-CCNL/Taiyi-Stable-Diffusion-1B-Anime-Chinese-v0.1)

## VAEs
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

- [NansException: A tensor with all NaNs was produced in VAE on some images in img2img](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/7633)
  
  ```
  modules.devices.NansException: A tensor with all NaNs was produced in VAE. This could be because there's not enough precision to represent the picture. Try adding --no-half-vae commandline argument to fix this. Use --disable-nan-check commandline argument to disable this check.
  ```
  使用 `--no-half-vae` 可以解决，但会增加显存占用；也可以尝试通过更换 VAE 来解决；该问题似乎也与 upscaler 和图像分辨率有关。

  由于该异常会中止 batch，推荐默认使用 `--disable-nan-check`。
  
  [Is there any issue leaving the command line arg "--no-half-vae" in there full-time? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10g41ax/is_there_any_issue_leaving_the_command_line_arg/)

## Prompts
[stable-diffusion-webui-tokenizer: An extension for stable-diffusion-webui that adds a tab that lets you preview how CLIP model would tokenize your text.](https://github.com/AUTOMATIC1111/stable-diffusion-webui-tokenizer)

- Search engines
  - [Lexica](https://lexica.art/)
  - [PromptHero](https://prompthero.com/)
- [sd-promptbook](https://github.com/space-nuko/sd-promptbook/)
- [stable-diffusion-webui-wildcards: Wildcards](https://github.com/AUTOMATIC1111/stable-diffusion-webui-wildcards)
- [Stable Diffusion Dynamic Prompts extension](https://github.com/adieyal/sd-dynamic-prompts)
- [MagicPrompt-Stable-Diffusion · Hugging Face](https://huggingface.co/Gustavosta/MagicPrompt-Stable-Diffusion)
- [Booru tag autocompletion for A1111](https://github.com/DominikDoom/a1111-sd-webui-tagcomplete)

Regional prompts:
- [Latent Couple extension (two shot diffusion port)](https://github.com/opparco/stable-diffusion-webui-two-shot)
  - [ashen-sensored/stable-diffusion-webui-two-shot](https://github.com/ashen-sensored/stable-diffusion-webui-two-shot)

  Area 的限定并不严格，图像很容易超出 mask。

  要点击 `Prompt Info Update` 才会应用 mask。
- [Regional Prompter](https://github.com/hako-mikan/sd-webui-regional-prompter)

Prompt editing:
- `[from:to:when]`

  Where `from` and `to` are arbitrary texts, and `when` is a number that defines how late in the sampling cycle should the switch be made. The later it is, the less power the model has to draw the `to` text in place of `from` text.
  
  If `when` is a number between 0 and 1, it's a fraction of the number of steps after which to make the switch. If it's an integer greater than zero, it's just the step after which to make the switch.

- `[to:when]` - adds `to` to the prompt after a fixed number of steps (`when`)

- `[from::when]` - removes `from` from the prompt after a fixed number of steps (`when`)

[Prompt Fusion: auto1111 webui extension for all sorts of prompt interpolations!](https://github.com/ljleb/prompt-fusion-extension)

[shift-attention: In stable diffusion, generate a sequence of images shifting attention in the prompt.](https://github.com/yownas/shift-attention)

[Cutoff: Cutting Off Prompt Effect](https://github.com/hnmr293/sd-webui-cutoff)

## Tools
- [Stable Diffusion web UI](#stable-diffusion-web-ui)
- [ComfyUI: A powerful and modular stable diffusion GUI with a graph/nodes interface.](https://github.com/comfyanonymous/ComfyUI)
- [Sygil-Dev/sygil-webui: Stable Diffusion web UI](https://github.com/Sygil-Dev/sygil-webui)
- [HCP-Diffusion: A universal Stable-Diffusion toolbox](https://github.com/7eu7d7/HCP-Diffusion)

### [Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
[Features · AUTOMATIC1111/stable-diffusion-webui Wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features)

Size:
- 图像的比例也会影响图像的内容，不合适的比例可能会导致异形率增加。
  - 0.7: 448x640, 896x1280
- 改变分辨率会影响 seed 的结果，但改变模型不一定会。

Sampling methods:
- Comparison

  ![](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/images/sampling.jpg)
- [Comparison of new UniPC sampler method added to Automatic1111 : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/11oke60/comparison_of_new_unipc_sampler_method_added_to/)

CFG:
- CFG 控制的是生成的创造性，CFG 为 0 时创造性最大，得到的是噪声图像，CFG 为最大时创造性最小，将得到模型下相关 prompt 的基础图像。

  [What exactly is clip skip? · AUTOMATIC1111/stable-diffusion-webui · Discussion #5674](https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/5674#discussioncomment-5465639)

Clip skip:
- 忽略的 layers 越多，语义越模糊。

  Clip skip 比 CFG 更适合用于增强生成图像的丰富性。

  [What exactly is clip skip? · AUTOMATIC1111/stable-diffusion-webui · Discussion #5674](https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/5674)

  [Clip skip test. You use it? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10cvnm0/clip_skip_test_you_use_it/)
- 如果生成时忽略的 layers 小于模型训练时忽略的 layers，语义会被过度强化。

[Optimizations](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Optimizations):
- `--xformers`
- `--opt-split-attention --opt-sub-quad-attention --medvram`
- Batch size

  Batch size 与生成速度并不成正比，甚至可能与 batch size 为 1 时的速度相同。

  [What exactly does batch size do? · AUTOMATIC1111/stable-diffusion-webui · Discussion #8930](https://github.com/AUTOMATIC1111/stable-diffusion-webui/discussions/8930)
- Token Merging

  The recommanded ratio is 0.5.

  [Integrate optional speed and memory improvements by token merging (via dbolya/tomesd) by papuSpartan · Pull Request #9256 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/9256)

  [ToMe extension for Stable Diffusion A1111 WebUI](https://github.com/SLAPaper/a1111-sd-webui-tome)
- [Caching models](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#caching-models)
  - Checkpoints to cache in RAM
  - VAE Checkpoints to cache in RAM
- `SAFETENSORS_FAST_GPU`

  [Switching models too slow in Automatic1111? Use SafeTensors to speed it up : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/z8mnak/switching_models_too_slow_in_automatic1111_use/)
- Disable `--no-half-vae`.
- Disable `Always save all generated image grids`.

Automation:
- Batch
- [X/Y/Z plot](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#xyz-plot)

  ```
  1-5 = 1, 2, 3, 4, 5
  1-5 (+2) = 1, 3, 5
  1-10 [5] = 1, 3, 5, 7, 10
  ```
- [Kryptortio/SDAtom-WebUi-us: Queue system for AUTOMATIC1111's webui](https://github.com/Kryptortio/SDAtom-WebUi-us)

  [I made a queue system for Automatic1111's Stable Diffusion WebUI so you don't have to wait for each prompt to complete : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/zq0wl9/i_made_a_queue_system_for_automatic1111s_stable/)

  不支持 Options in main UI。
- [Stable Diffusion Randomize extension: Randomize txt2img generation params](https://github.com/innightwolfsleep/stable-diffusion-webui-randomize)

User interface:
- Options in main UI
  - 在 UI 中不能调整 options 的显示顺序，只能在 `config.json `中手动进行调整，key 为 `extra_options`。
  - Place options in main UI into an accordion

    可以将 options 显示为两列，节省空间。
  - Options
    - `samples_filename_pattern`

      可以用于在生成前进行命名，避免生成后再重命名；也可以搭配 X/Y/Z plot 使用：
      - `[model_name]`
      - `[sampler]`
      - `[steps]`
      - `[denoising]`
      - `[cfg]`
      - `[seed]`
      - `[clip_skip]`
      - `[vae_filename]`
      - `[prompt]`, `[prompt_spaces]`
      - `[hasprompt<prompt1|default><prompt2>...]`
      - `[prompt_hash]`
    - `save_images_before_highres_fix`
    - `CLIP_stop_at_last_layers`
    - `token_merging_ratio_hr`
    - `sd_vae`
    - `token_merging_ratio_img2img`
    - `upscaler_for_img2img`
- [stable-diffusion-webui-state: Stable Diffusion extension that preserves ui state](https://github.com/ilian6806/stable-diffusion-webui-state)

#### img2img
Hires. fix：
- Hires. fix 能够添加细节，使图像更加接近 prompts，但过强的 fix 也可能导致图像崩坏。
- Hires. fix 会导致某些 model 崩坏，降低 denosing strength 能够减缓问题，更换 upscaler 也有可能减缓问题。
- Upscalers
  - Latent upscalers 消耗的显存少很多，但会生成更多的细节，在低 denosing strength 时更容易导致图像崩坏，高 denosing stength 时则会大幅改变图像。

    这实际上说明现有的放大 latent 方法并不等同于放大图像。
  
    [Hires upscalers : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10wti9c/hires_upscalers/)

  - 在低 denosing strength 时，生成图像稳定程度的相对关系是：Latent (bicubic) > Latent (nearest-exact) >> Latent。

  - Latent (nearest) 与 Latent (nearst-exact) 在整数倍缩放时相同，在非整数倍缩放时后者的结果可能更好，推荐只使用后者。

    [hires-fix: add "nearest-exact" latent upscale mode. by 0xb8 · Pull Request #6364 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/pull/6364)

  - [LLuL - Local Latent upscaLer](https://github.com/hnmr293/sd-webui-llul)
  
- 较高的 denoising strength 可能导致头发趋向于卷发。

[Inpainging & Outpainting](https://rentry.org/drfar):
- Inpaint 可能会与原图产生色差，将 inpaint 结果通过低 denoising strength 的 img2img 再次处理可以缓解这一问题，但会导致整幅图发生变化；也可以使用 Photoshop 手动修复。
  - Apply color correction to img2img results to match original colors.
- 也可以直接使用 Photoshop 等工具手动粗略修复图像，再通过 img2img 或 inpaint 细化。
- Inpaint 时使用高 denoising strength 可能会导致图像再次出现问题，低 denoising strength 又可能无法足够地细化，这时可以通过 Loopback 进行多次低 denoising strength 的 inpaint 来解决。

  不过要注意的是，在同一区域 Lookback 过多也会导致图像与原图像存在显著差异。

  此外，即使是很低的 denosing strength 也会对文字产生较大影响。
- 同时修复多个部位比单独修复每个部位困难，可以使用 Photoshop 将不同图像的不同修复图像进行拼合。
- Inpaint sketch 尽管可以指定颜色，但经常会修改到 mask 之外的内容，有时还会生成无关的图像。一种替代方法是把 inpaint sketch 中涂改好的图像发送到 inpaint，再绘制 mask，将 original 作为 masked content 来进行 inpaint。
- 实在无法修复时，也可以考虑只截取图像的正常部分。
- [ABG extension](https://github.com/KutsuyaYuki/ABG_extension)

  Remove background.

#### infotext
[Custom Images Filename Name and Subdirectory · AUTOMATIC1111/stable-diffusion-webui Wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Custom-Images-Filename-Name-and-Subdirectory)
- [FilenameGenerator](https://github.com/AUTOMATIC1111/stable-diffusion-webui/blob/394ffa7b0a7fff3ec484bcd084e673a8b301ccc8/modules/images.py#L338)

  `[denoising]`, `[vae_filename]` and `[job_timestamp]` are not listed in the wiki.
- Default: `number-[seed]-[prompt_spaces]`
- `number-[model_name]-[seed]`

Parameters not saved in infotext:
- VAE
- img2img
  - init images (v1.1.0)
  - Apply color correction to img2img results to match original colors.
- Upcast cross attention layer to float32.
- Optimizations
  - ~~Token Merging~~

    但 ToMe 扩展不支持。
- ~~LoRA hashes~~ (v1.3.0)

  [\[Feature Request\]: Save extra networks hashes into infotext · Issue #8040 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/8040)
- ~~Version~~ (v1.2.0)
  - [Seed breaking changes](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Seed-breaking-changes)
- ~~Clip skip~~

  Clip skip is not saved when it is 1.

Watermark: [Implement invisible watermark according to the settings · Issue #2803 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/2803)

#### Tutorials
[【AI绘画】从零开始的AI绘画入门教程——魔法导论 - 哔哩哔哩](https://www.bilibili.com/read/cv22159609)
- [AI绘画教程：从入门到放弃(xiaobai) - 知乎](https://zhuanlan.zhihu.com/p/607892849)
- [stable diffusion webui的简易入门 - 知乎](https://zhuanlan.zhihu.com/p/610298913)
- [关于 AUTOMATIC1111/stable-diffusion-webui 的 FAQ](https://gist.github.com/crosstyan/f912612f4c26e298feec4a2924c41d99)
- [\[闲聊杂谈\] \[ai绘画教程\]手把手教你获得赛博老公老婆的cos图集 \[教程\]\[搬运\] 178](https://nga.178.com/read.php?tid=35435044)

[【授之以渔】关于AI涩图绘制的一点经验（91L更新炼丹心得） - 卓明谷 - Stage1st - stage1/s1 游戏动漫论坛](https://stage1st.com/2b/forum.php?mod=viewthread&action=printable&tid=2098415)

[出精图必备！SD webui更多强大的功能！(Novel AI) - 哔哩哔哩](https://www.bilibili.com/read/cv19211897?from=articleDetail)

[玩了一段时间的sd-webui，简单聊聊我觉得目前ai作画存在的一些痛点，也是当前手工作业很难取代之处 NGA玩家社区](https://g.nga.cn/read.php?tid=35710972&rand=594)

## Training
- [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)
- [Naifu Diffusion: Train stable diffusion model with Diffusers, Hivemind and Pytorch Lightning](https://github.com/Mikubill/naifu-diffusion)
- [HCP-Diffusion: A universal Stable-Diffusion toolbox](https://github.com/7eu7d7/HCP-Diffusion)

Merging:
- [Checkpoint Merger](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features#checkpoint-merger)
- [SuperMerger: model merge extention for stable diffusion web ui](https://github.com/hako-mikan/sd-webui-supermerger)
- [Merge Models: Merges two latent diffusion models at a user-defined ratio](https://github.com/eyriewow/merge-models)
- [losslessmix: Mixing models of stable diffusion without weights loss](https://github.com/recoilme/losslessmix) (discontinued)

Tutorials:
- [(已过时)Lora人物训练（多concept）导论 - 哔哩哔哩](https://www.bilibili.com/read/cv22050074)
- [Re: [問題] AI為什麼不去吃動畫就好？ - 看板 C_Chat - 批踢踢實業坊](https://www.ptt.cc/bbs/C_Chat/M.1678539597.A.5DB.html)

## Services
- [Stable Diffusion Online](https://stablediffusionweb.com/)
- [Stable Diffusion 2-1 - a Hugging Face Space by stabilityai](https://huggingface.co/spaces/stabilityai/stable-diffusion)
- [MajinAI](https://majinai.art/index.php)
