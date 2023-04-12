# Low-Rank Adaptation
[LoRA: Low-Rank Adaptation of Large Language Models](https://arxiv.org/abs/2106.09685)

[Low-rank Adaptation for Fast Text-to-Image Diffusion Fine-tuning](https://github.com/cloneofsimo/lora)

[LoRA Block Weight](https://github.com/hako-mikan/sd-webui-lora-block-weight)
- ```
  NONE,ALL,INS,IND,INALL,MIDD,OUTD,OUTS,OUTALL,ALL0.5
  ```

[Composable LoRA: This extension replaces the built-in LoRA forward procedure.](https://github.com/opparco/stable-diffusion-webui-composable-lora)

添加多个 LoRA 可能会导致图像出现类似过曝的现象，可以通过减小 CFG scale 和 steps 来缓解，不过减小 steps 也可能会导致水彩画风类图像不够精细。

## Training
- [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)
  - [Kohya's GUI](https://github.com/bmaltais/kohya_ss)
  - [Kohya Trainer: Adapted from https://note.com/kohya_ss/n/nbf7ce8d80f29 for easier cloning](https://github.com/Linaqruf/kohya-trainer)
    - [Kohya Colab: Accessible Google Colab notebooks for Stable Diffusion Lora training, based on the work of kohya-ss and Linaqruf](https://github.com/hollowstrawberry/kohya-colab)
  - [LoRA_Easy_Training_Scripts: A set of two training scripts written in python for use in Kohya's SD-Scripts repository.](https://github.com/derrian-distro/LoRA_Easy_Training_Scripts)
  - [LoRA-scripts: LoRA training scripts use kohya-ss's trainer, for diffusion model.](https://github.com/Akegarasu/lora-scripts)
  - [sd-webui-train-tools: The stable diffusion webui training aid extension helps you quickly and visually train models such as Lora.](https://github.com/liasece/sd-webui-train-tools)
- [Naifu Diffusion: Train stable diffusion model with Diffusers, Hivemind and Pytorch Lightning](https://github.com/Mikubill/naifu-diffusion/)

Tutorials:
- [LoRA Training Guide](https://rentry.org/lora_train)
- [Fw: [AI] 如何訓練LoRA? 猴子都學得會的手把手教學! - 看板 AI_Art - 批踢踢實業坊](https://www.ptt.cc/bbs/AI_Art/M.1675979958.A.6A5.html)
- [Stable Diffusion Lora训练定制角色（二次元向） - 知乎](https://zhuanlan.zhihu.com/p/616500728)

Aspect Ratio Bucketing:
- [LORA train image size and : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/11iwo3q/lora_train_image_size_and/)

Parameters:
- [求助lora模型训练的步数是根据什么改变的？ 178](https://nga.178.com/read.php?tid=35361853&rand=212)
- [\[攻略心得\] lora loha训练个人参数心得 NGA玩家社区](https://ngabbs.com/read.php?tid=35899459&rand=452)
- [\[AI绘图\]一些lora模型训练心得 - 知乎](https://zhuanlan.zhihu.com/p/616837063)

## LyCORIS
[LyCORIS: Lora beYond Conventional methods, Other Rank adaptation Implementations for Stable diffusion.](https://github.com/KohakuBlueleaf/LyCORIS)
