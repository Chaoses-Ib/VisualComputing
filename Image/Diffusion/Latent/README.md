# Latent Diffusion
## Variational autoencoders
不同 VAE 间的效果差别类似滤镜。

### modules.devices.NansException: A tensor with all NaNs was produced in VAE
```
modules.devices.NansException: A tensor with all NaNs was produced in VAE. This could be because there's not enough precision to represent the picture. Try adding --no-half-vae commandline argument to fix this. Use --disable-nan-check commandline argument to disable this check.
```

使用 `--no-half-vae` 可以解决，但会增加显存占用；也可以尝试通过更换 VAE 来解决；该问题似乎也与 upscaler 和图像分辨率有关；ComfyUI 没有该问题。

由于该异常会中止 batch，推荐默认使用 `--disable-nan-check`。

- [\[Bug\]: A tensor with all NaNs was produced in Unet · Issue #6923 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/6923)
- [NansException: A tensor with all NaNs was produced in VAE on some images in img2img](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/7633)
- [Help with Stable Diffusion NaNs error? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10eikja/help_with_stable_diffusion_nans_error/)
- [Is there any issue leaving the command line arg "--no-half-vae" in there full-time? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10g41ax/is_there_any_issue_leaving_the_command_line_arg/)

## Models
- 模型多样性越低越容易崩坏，而专题模型的多样性通常不如大模型，减少在后期 sampling 阶段使用的 topic models 有助于保持图像质量。

## Sampling
- Multi-stage sampling
  
  Steps 并不是单纯地重复 sampling，两次 10 steps sampling 的结果与一次 20 steps sampling 的结果是不同的。

  要实现多阶段 sampling，需要：
  1. 只在第一阶段 sampling 中开启 `add_noise`
  2. 除了最后一阶段 sampling 都开启 `return_with_leftover_noise`
  3. 使用 `start_at_step` 和 `end_at_step` 来分配 steps
  
  在 sampling 过程中对 latent image 进行 VAE decode 和 encode 会影响 sampling 的结果，被操作的 step 越靠前，对最终结果的影响越大。产生这一问题的原因可能是 VAE 是在无噪音的正常图像上进行训练的，对于含有噪音的中间图像无法进行有效的 encoding。
  - 这一问题导致无法对 sampling 的中间结果进行干预。这种干预相比于对图像重新进行 sampling（即 img2img）可能更加稳定，在干预区域外的结果保持不变。
    - 另外，如果使用 upscaling 等方法对中间图像进行正则化，也有可能能够产生质量更好的最终图像。
  - 关闭前一阶段 sampling 的 `return_with_leftover_noise`，同时开启后一阶段 sampling 的 `add_noise`，可以产生较为正常的结果，但也与正常 sampling 的结果不同。
  - 一种可能的解决方案是分开保存 decoded image 和 leftover noise，在对 decoded image 进行 encode 后，再添加上 leftover noise 作为下一阶段 sampling 的输入。

## Prompts
- [stable-diffusion-webui-tokenizer: An extension for stable-diffusion-webui that adds a tab that lets you preview how CLIP model would tokenize your text.](https://github.com/AUTOMATIC1111/stable-diffusion-webui-tokenizer)
- 下划线与空格的作用是不等价的。

[Pro-Tip: Negative Prompt doesn't technically exist (But practically does). : comfyui](https://www.reddit.com/r/comfyui/comments/188z6gv/protip_negative_prompt_doesnt_technically_exist/)

Tools:
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
- [ComfyUI](#comfyui)
- [Sygil-Dev/sygil-webui: Stable Diffusion web UI](https://github.com/Sygil-Dev/sygil-webui)
- [HCP-Diffusion: A universal Stable-Diffusion toolbox](https://github.com/7eu7d7/HCP-Diffusion)

### [ComfyUI](https://github.com/comfyanonymous/ComfyUI)
A powerful and modular stable diffusion GUI with a graph/nodes interface.

[ComfyUI Community Manual](https://blenderneko.github.io/ComfyUI-docs/)

[ComfyUI Examples](https://comfyanonymous.github.io/ComfyUI_examples/)

[Frequently Asked Questions](https://comfyanonymous.github.io/ComfyUI_examples/faq/)

[ComfyUI Basic Tutorial VN](https://comfyanonymous.github.io/ComfyUI_tutorial_vn/)

Core nodes:
- [What's up with diffusers and ComfyUI? : comfyui](https://www.reddit.com/r/comfyui/comments/17fvb49/whats_up_with_diffusers_and_comfyui/)

  > The diffusers library itself is badly designed so I won't include or use it in the core software but I don't mind supporting models in that format as long as it's something people are actually going to use.

- [Node Expansion, While Loops, Components, and Lazy Evaluation by guill - Pull Request #931](https://github.com/comfyanonymous/ComfyUI/pull/931)
- VAEs
  - [Question: VAE Precision - Issue #827](https://github.com/comfyanonymous/ComfyUI/issues/827)
- [\[Feature Request\] Conditional execution control - Issue #313](https://github.com/comfyanonymous/ComfyUI/issues/313)
- [\[Feature Request\] Reroute node widget with on/off switch and reroute node widget with patch selector - Issue #1051](https://github.com/comfyanonymous/ComfyUI/issues/1051)
- Route

  [Allow connect primitive nodes to route nodes by omar92 - Pull Request #453](https://github.com/comfyanonymous/ComfyUI/pull/453)
- Load Image
  - 不能重复上传同一路径的图像。
  - [Support loading images from arbitrary paths - Issue #138](https://github.com/comfyanonymous/ComfyUI/issues/138)

  [ComfyUI_Ib_CustomNodes](https://github.com/Chaoses-Ib/ComfyUI_Ib_CustomNodes)
- Save Image
  - `%node_name.widget_name%`
    - `%Seed.value%`
  - 当 `filename_prefix` 为空时会使用 `.` 作为 prefix，但却会用空 prefix 来探测已存在文件，导致已有文件被覆盖。
- [When designing a custom node, how do we choose whether a parameter is set using nodes, or as an input field? - Issue #1264](https://github.com/comfyanonymous/ComfyUI/issues/1264)
  - [to have a setting option for widgets "DefultAsInput" - Discussion #454](https://github.com/comfyanonymous/ComfyUI/discussions/454)

Custom nodes:
- [ComfyUI-Manager/extension-node-map.json](https://github.com/ltdrdata/ComfyUI-Manager/blob/main/extension-node-map.json)
- [ComfyUI\_Ib\_CustomNodes](https://github.com/Chaoses-Ib/ComfyUI_Ib_CustomNodes)
  - ComfyScript
- [Efficiency Nodes for ComfyUI](https://github.com/LucianoCirino/efficiency-nodes-comfyui)
- [RockOfFire/Comfyroll Custom Nodes](https://github.com/RockOfFire/ComfyUI_Comfyroll_CustomNodes)
- [Auto-MBW for ComfyUI loosely based on sdweb-auto-MBW](https://github.com/szhublox/ambw_comfyui)
- [Davemane42's Custom Node for ComfyUI](https://github.com/Davemane42/ComfyUI_Dave_CustomNode)
  - MultiAreaConditioning
  - MultiLatentComposite
- [ComfyUI Noise: 6 nodes for ComfyUI that allows for more control and flexibility over noise to do e.g. variations or "un-sampling"](https://github.com/BlenderNeko/ComfyUI_Noise)
- [Tiled sampling for ComfyUI](https://github.com/BlenderNeko/ComfyUI_TiledKSampler)

  Random tilling 不适合人物画。
- [Cutoff for ComfyUI](https://github.com/BlenderNeko/ComfyUI_Cutoff)
- [Advanced CLIP Text Encode: ComfyUI node that let you pick the way in which prompt weights are interpreted](https://github.com/BlenderNeko/ComfyUI_ADV_CLIP_emb)
- [ComfyUI-DynamicPrompts Custom Nodes](https://github.com/adieyal/comfyui-dynamicprompts)
- `STRING` 缺少 `default` 时会导致 node 无法显示。

Extensions:
- [ComfyUI Manager](https://github.com/ltdrdata/ComfyUI-Manager)

Workflows:
- [wyrde-comfyui-workflows](https://github.com/wyrde/wyrde-comfyui-workflows)

[Custom Nodes, Extensions, and Tools for ComfyUI](https://github.com/WASasquatch/comfyui-plugins)

[\[Request\] Human Readable Prompt Exportation - Issue #612](https://github.com/comfyanonymous/ComfyUI/issues/612)
- [Feature request: Comfyui generational data. - Issue #202 - zanllp/sd-webui-infinite-image-browsing](https://github.com/zanllp/sd-webui-infinite-image-browsing/issues/202)

[feat: LoRA as prompt - Issue #794](https://github.com/comfyanonymous/ComfyUI/issues/794)

API:
- [`ComfyUI/script_examples/basic_api_example.py`](https://github.com/comfyanonymous/ComfyUI/blob/a252963f956a7d76344e3f0ce24b1047480a25af/script_examples/basic_api_example.py)
- [ComfyUI : Using the API : Part 1. Controlling ComfyUI via Script &... | by Yushan777 | Medium](https://medium.com/@yushantripleseven/comfyui-using-the-api-261293aa055a)

### [Stable Diffusion web UI](https://github.com/AUTOMATIC1111/stable-diffusion-webui)
[Features · AUTOMATIC1111/stable-diffusion-webui Wiki](https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Features)

Size:
- 图像的比例也会影响图像的内容，不合适的比例可能会导致异形率增加。
  - 0.7: 448x640, 896x1280
- 改变分辨率会影响 seed 的结果，但改变模型不一定会。

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

  除了提高速度和节省内存外，Token Merging 还可用于简化画面。

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
- Hires fix
  - Show hires sampler selection
  - Show hires prompt and negative prompt
- [stable-diffusion-webui-state: Stable Diffusion extension that preserves ui state](https://github.com/ilian6806/stable-diffusion-webui-state)

#### img2img
Hires. fix：
- Hires. fix 能够添加细节，使图像更加接近 prompts，但过强的 fix 也可能导致图像崩坏。
- Hires. fix 会导致某些 model 崩坏，降低 denosing strength 能够减缓问题，更换 upscaler 也有可能减缓问题。
- 如果某个 LoRA 容易导致 txt2img 图像崩溃，可以通过不在 txt2img 中使用，只在 hires. fix 中使用（并使用高 denosing strength）来缓解。
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
- ~~VAE~~ (v1.6.0)
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
- [Re: [問題] AI為什麼不去吃動畫就好？ - 看板 C_Chat - 批踢踢實業坊](https://www.ptt.cc/bbs/C_Chat/M.1678539597.A.5DB.html)
