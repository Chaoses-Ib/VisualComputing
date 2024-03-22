# Low-Rank Adaptation
[LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/abs/2106.09685)

[Low-rank Adaptation for Fast Text-to-Image Diffusion Fine-tuning](https://github.com/cloneofsimo/lora)

[LoRA Block Weight](https://github.com/hako-mikan/sd-webui-lora-block-weight)
- ```
  NONE,ALL,INS,IND,INALL,MIDD,OUTD,OUTS,OUTALL,ALL0.5
  ```

[Composable LoRA: This extension replaces the built-in LoRA forward procedure.](https://github.com/opparco/stable-diffusion-webui-composable-lora)

添加多个 LoRA 可能会导致图像出现类似过曝的现象，可以通过减小 CFG scale 和 steps 来缓解，不过减小 steps 也可能会导致水彩画风类图像不够精细。

## Concept Sliders
[GitHub](https://github.com/rohitgandikota/sliders)

[r/StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/1821m1l/concept_sliders_precise_control_in_diffusion/), [r/comfyui](https://www.reddit.com/r/comfyui/comments/18iazt2/concept_sliders_lora_adaptors_for_precise_control/)

效果不错，对整体的影响确实也很小。

为什么 prompt 的权重没有变成和 slider 的效果一样呢？

Models:
- [Index of weights](https://sliders.baulab.info/weights/)
- [slider Stable Diffusion AI Models | Civitai](https://civitai.com/tag/slider)

SDXL models:
- `age`
- `cartoon_style`
- `fix_hands`
  - 对画面的影响比 `age` 大
- `repair`
  - 虽然影响比较大，确实能修复画面。

SD1 models:
- [Finger Count Slider SD15 (Increase/Decrease Finger Number) - v1.0 | Stable Diffusion LoRA | Civitai](https://civitai.com/models/148882/finger-count-slider-sd15?modelVersionId=166184)
- [Skin Tone Slider - LoRA - v1.0 | Stable Diffusion LoRA | Civitai](https://civitai.com/models/112594/skin-tone-slider-lora)
- Age
  - `age_sd14`
  - [Age Slider LoRA (for anime) - v2.0 | Stable Diffusion LoRA | Civitai](https://civitai.com/models/158272/age-slider-lora-for-anime?modelVersionId=183341)
- [breast size slider - offset | Stable Diffusion LoRA | Civitai](https://civitai.com/models/131864/breast-size-slider)

## Training
- [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)
  - [Kohya's GUI](https://github.com/bmaltais/kohya_ss)
  - [Kohya Trainer: Adapted from https://note.com/kohya_ss/n/nbf7ce8d80f29 for easier cloning](https://github.com/Linaqruf/kohya-trainer)
    - [Kohya Colab: Accessible Google Colab notebooks for Stable Diffusion Lora training, based on the work of kohya-ss and Linaqruf](https://github.com/hollowstrawberry/kohya-colab)
  - [LoRA_Easy_Training_Scripts: A set of two training scripts written in python for use in Kohya's SD-Scripts repository.](https://github.com/derrian-distro/LoRA_Easy_Training_Scripts)
  - [LoRA-scripts: LoRA training scripts use kohya-ss's trainer, for diffusion model.](https://github.com/Akegarasu/lora-scripts)
  - [sd-webui-train-tools: The stable diffusion webui training aid extension helps you quickly and visually train models such as Lora.](https://github.com/liasece/sd-webui-train-tools)
- [Naifu Diffusion: Train stable diffusion model with Diffusers, Hivemind and Pytorch Lightning](https://github.com/Mikubill/naifu-diffusion/)
- [DreamArtist for Stable-Diffusion-webui extension](https://github.com/7eu7d7/DreamArtist-sd-webui-extension)

Tutorials:
- [LoRA Training Guide](https://rentry.org/lora_train)
- [Fw: [AI] 如何訓練LoRA? 猴子都學得會的手把手教學! - 看板 AI_Art - 批踢踢實業坊](https://www.ptt.cc/bbs/AI_Art/M.1675979958.A.6A5.html)
- [Stable Diffusion Lora训练定制角色（二次元向） - 知乎](https://zhuanlan.zhihu.com/p/616500728)
- [(已过时)Lora人物训练（多concept）导论 - 哔哩哔哩](https://www.bilibili.com/read/cv22050074)

Aspect Ratio Bucketing:
- [LORA train image size and : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/11iwo3q/lora_train_image_size_and/)

Parameters:
- [求助lora模型训练的步数是根据什么改变的？ 178](https://nga.178.com/read.php?tid=35361853&rand=212)
- [\[攻略心得\] lora loha训练个人参数心得 NGA玩家社区](https://ngabbs.com/read.php?tid=35899459&rand=452)
- [\[AI绘图\]一些lora模型训练心得 - 知乎](https://zhuanlan.zhihu.com/p/616837063)

## LyCORIS
[LyCORIS: Lora beYond Conventional methods, Other Rank adaptation Implementations for Stable diffusion.](https://github.com/KohakuBlueleaf/LyCORIS)
