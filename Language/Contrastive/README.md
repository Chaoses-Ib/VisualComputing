# Contrastive Learning
## [Contrastive Language-Image Pre-training](https://github.com/openai/CLIP)
[Blog](https://openai.com/research/clip)

CLIP 是 OpenAI 提出的一个 vision-language model，它使用 contrastive learning 实现了将文本和图像编码到同一 embedding 空间，从而能够执行跨模态任务。

[The Annotated CLIP (Part-1)](https://amaarora.github.io/posts/2023-03-06_Understanding_CLIP.html)

[why the text embedding or image embedding generated by clip model is 768 × n - Stack Overflow](https://stackoverflow.com/questions/75693493/why-the-text-embedding-or-image-embedding-generated-by-clip-model-is-768-%C3%97-n)

Models:
- [openai/CLIP](https://github.com/openai/CLIP)
  - ViT-B/32: [openai/clip-vit-base-patch32](https://huggingface.co/openai/clip-vit-base-patch32)
    - 151M
    - Embedding dimension: 512
    - [\[AUTOMATED\] Model Memory Requirements](https://huggingface.co/openai/clip-vit-base-patch32/discussions/11)
  - ViT-B/16: [openai/clip-vit-base-patch16](https://huggingface.co/openai/clip-vit-base-patch16)
    - 151M
    - Embedding dimension: 512
    - Slower than ViT-B/32.
  - 2021-07 ViT-L/14: [openai/clip-vit-large-patch14](https://huggingface.co/openai/clip-vit-large-patch14)
    - Embedding dimension: 768
  - 2022-01 ViT-L/14@336px: [openai/clip-vit-large-patch14-336](https://huggingface.co/openai/clip-vit-large-patch14-336)
    - Embedding dimension: 768
  - [mlunar/clip-variants](https://huggingface.co/mlunar/clip-variants)
  
  Private dataset: [How is the dataset collected? - Issue #23 - openai/CLIP](https://github.com/openai/CLIP/issues/23)

- [OpenCLIP: An open source implementation of CLIP.](https://github.com/mlfoundations/open_clip)
  - [laion/CLIP-ViT-B-32-DataComp.XL-s13B-b90K](https://huggingface.co/laion/CLIP-ViT-B-32-DataComp.XL-s13B-b90K)
    - 151M
    - Cannot be used with Transformers.
  - [laion/CLIP-ViT-B-32-256x256-DataComp-s34B-b86K](https://huggingface.co/laion/CLIP-ViT-B-32-256x256-DataComp-s34B-b86K)
    - Cannot be used with Transformers.
  - [laion/CLIP-ViT-B-32-laion2B-s34B-b79K](https://huggingface.co/laion/CLIP-ViT-B-32-laion2B-s34B-b79K)
    - 151M
  - [laion/CLIP-ViT-H-14-laion2B-s32B-b79K](https://huggingface.co/laion/CLIP-ViT-H-14-laion2B-s32B-b79K)
    - 986M
  
  [Convert multilingual LAION CLIP checkpoints from OpenCLIP to Hugging Face Transformers](https://gist.github.com/calpt/8e3555bd11f1916b5169c8125117e5ee)
  - [calpt/CLIP-ViT-B-32-xlm-roberta-base-laion5B-s13B-b90k](https://huggingface.co/calpt/CLIP-ViT-B-32-xlm-roberta-base-laion5B-s13B-b90k)

[Disco Diffusion: Comparing ViT-B-32 weights (Part 1) | by Adi | Medium](https://medium.com/@soapsudtycoon/disco-diffusion-comparing-vit-b-32-weights-4055dfb10df8)

[LAION-AI/CLIP\_benchmark: CLIP-like model evaluation](https://github.com/LAION-AI/CLIP_benchmark)

Implementations:
- [openai/CLIP](https://github.com/openai/CLIP)
- [OpenCLIP: An open source implementation of CLIP.](https://github.com/mlfoundations/open_clip)

  [Add support for open\_clip - Issue #18831 - huggingface/transformers](https://github.com/huggingface/transformers/issues/18831)
- [Transformers](https://huggingface.co/docs/transformers/model_doc/clip)
  - [clip-gaze: Run CLIP queries against an image](https://github.com/hmillerbakewell/clip-gaze)
- [zer0int/CLIP-fine-tune: Fine-tuning code for CLIP models](https://github.com/zer0int/CLIP-fine-tune)

Applications:
- Image-text similarity
- [Image classification](#image-classification)
- [Image captioning](#image-captioning)

[Awesome CLIP: Awesome list for research on CLIP (Contrastive Language-Image Pre-Training).](https://github.com/yzhuoning/Awesome-CLIP)

## Multilingual
- 2022-11 [Chinese-CLIP: Chinese version of CLIP which achieves Chinese cross-modal retrieval and representation generation.](https://github.com/OFA-Sys/Chinese-CLIP) ([Transformers](https://huggingface.co/docs/transformers/en/model_doc/chinese_clip))
- 2022-11 [AltCLIP](https://github.com/FlagAI-Open/FlagAI/tree/master/examples/AltCLIP)
  - [BAAI/AltCLIP](https://huggingface.co/BAAI/AltCLIP)
  - [BAAI/AltCLIP-m9](https://huggingface.co/BAAI/AltCLIP-m9)
  - [BAAI/AltCLIP-m18](https://huggingface.co/BAAI/AltCLIP-m18)
- [thu-ml/zh-clip](https://github.com/thu-ml/zh-clip)

## Applications
### Image-text similarity
Tools:
- [pharmapsychotic/clip-interrogator: Image to prompt with BLIP and CLIP](https://github.com/pharmapsychotic/clip-interrogator)

### Image classification
与传统的图像分类模型不同，由于 CLIP 是在 image-caption 数据集上进行训练的，它并不能直接用于图像分类。在 CLIP 的原论文中，图像分类是通过将所有 class 按照 prompt 格式转换为 caption 并进行编码，再与图像编码后的 embedding 进行比较，选取最相似的 caption 来实现的。

相较于传统的图像分类模型，使用 CLIP 实现图像分类的主要优势是泛化性能较强，可以进行 zero-shot 分类，即不对 pretraining 模型进行 fine-tuning 就可以在新的数据集上取得不错的分类性能；同时 CLIP 在 few-shot learning 上也有较好的表现，对数据量的要求较低。

CLIP 的原论文中对比了几种不同的 prompt，发现 `A photo of {class}` 比 `{class}` 的性能更高，而针对特定数据集类型的 prompt，例如 `A photo of a {class}, a type of pet`，性能又更高一些。但是 CLIP 的原论文并没有给出一种通用的 prompt 优化方法，如果能够找到一种通用的优化方法，就能够低成本地提高 CLIP 及类似架构模型的分类性能。

CLIP 是否可以用于艺术风格分类而非实体分类？

目前基于 CLIP 的图像分类方法在含有多个 class 的单个图像上可能表现不佳。对于多 class 的图像分类需要改进分类方法，或者是结合目标检测方法来实现。

[Image Classification with OpenAI Clip | by Jett chen | Medium](https://medium.com/@JettChenT/image-classification-with-openai-clip-3ab5f1c23e35)

[About the ImageNet zero-shot performance with the released models - Issue #24 - openai/CLIP](https://github.com/openai/CLIP/issues/24)

[→Prompt Engineering](../Prompt/README.md)
- [CLIP/notebooks/Prompt\_Engineering\_for\_ImageNet.ipynb at main - openai/CLIP](https://github.com/openai/CLIP/blob/main/notebooks/Prompt_Engineering_for_ImageNet.ipynb)

### Image captioning
Although CLIP is trained on image-caption datasets, it cannot be directly used for image captioning.

- 2021-11 [ClipCap: CLIP Prefix for Image Captioning](https://github.com/rmokady/CLIP_prefix_caption)
  - Cannot be used to decode text embeddings. The result is very different from the original text.

    Original | Caption
    --- | ---
    a photo of a cat | cat on a white background.
    a photo of a dog | dog breed vs.
    a photo of a bird | bird of prey on the feeder.

  - [TheoCoombes/ClipCap: Using pretrained encoder and language models to generate captions from multimedia inputs.](https://github.com/TheoCoombes/ClipCap)

- [clip-text-decoder: Generate text captions for images from their embeddings.](https://github.com/fkodom/clip-text-decoder)

- 2022-02 BLIP: Bootstrapping Language-Image Pre-training for Unified Vision-Language Understanding and Generation

- 2022-11 [\[D\] Is there a way to decode clip features to a sentence? : r/MachineLearning](https://www.reddit.com/r/MachineLearning/comments/yix10u/d_is_there_a_way_to_decode_clip_features_to_a/)

- 2023-03 [DeCap: Decoding CLIP Latents for Zero-Shot Captioning via Text-Only Training](https://github.com/dhg-wei/DeCap)

  Original | Caption
  --- | ---
  a photo of a cat | a cat that is looking at the camera . 
  a photo of a dog | a picture of a dog that is in the picture . 
  a photo of a bird | a bird that is seen in the air 
  a cat that is looking at the camera . | a cat that is looking at the camera . 
  a picture of a dog that is in the picture . | a dog that is in the picture and the person . 
  a bird that is seen in the air  | a bird that is flying in the air . 