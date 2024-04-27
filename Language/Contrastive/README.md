# Contrastive Learning
## [Contrastive Language-Image Pre-training](https://github.com/openai/CLIP)
CLIP 是 OpenAI 提出的一个 vision-language model，它使用 contrastive learning 实现了将文本和图像编码到同一 embedding 空间，从而能够执行跨模态任务。

Models:
- [openai/CLIP](https://github.com/openai/CLIP)
  - ViT-B/32: [openai/clip-vit-base-patch32](https://huggingface.co/openai/clip-vit-base-patch32)
    - 86M
  - 2021-07 ViT-L/14: [openai/clip-vit-large-patch14](https://huggingface.co/openai/clip-vit-large-patch14)
  - 2022-01 ViT-L/14@336px: [openai/clip-vit-large-patch14-336](https://huggingface.co/openai/clip-vit-large-patch14-336)
- [OpenCLIP: An open source implementation of CLIP.](https://github.com/mlfoundations/open_clip)

[Disco Diffusion: Comparing ViT-B-32 weights (Part 1) | by Adi | Medium](https://medium.com/@soapsudtycoon/disco-diffusion-comparing-vit-b-32-weights-4055dfb10df8)

Implementations:
- [openai/CLIP](https://github.com/openai/CLIP)
- [Transformers](https://huggingface.co/docs/transformers/model_doc/clip)

Applications:
- Image-text similarity
- [Image classification](#image-classification)
- [Image captioning](#image-captioning)

[Awesome CLIP: Awesome list for research on CLIP (Contrastive Language-Image Pre-Training).](https://github.com/yzhuoning/Awesome-CLIP)

### Image classification
与传统的图像分类模型不同，由于 CLIP 是在 image-caption 数据集上进行训练的，它并不能直接用于图像分类。在 CLIP 的原论文中，图像分类是通过将所有 class 按照 prompt 格式转换为 caption 并进行编码，再与图像编码后的 embedding 进行比较，选取最相似的 caption 来实现的。

相较于传统的图像分类模型，使用 CLIP 实现图像分类的主要优势是泛化性能较强，可以进行 zero-shot 分类，即不对 pretraining 模型进行 fine-tuning 就可以在新的数据集上取得不错的分类性能；同时 CLIP 在 few-shot learning 上也有较好的表现，对数据量的要求较低。

CLIP 的原论文中对比了几种不同的 prompt，发现 `A photo of {class}` 比 `{class}` 的性能更高，而针对特定数据集类型的 prompt，例如 `A photo of a {class}, a type of pet`，性能又更高一些。但是 CLIP 的原论文并没有给出一种通用的 prompt 优化方法，如果能够找到一种通用的优化方法，就能够低成本地提高 CLIP 及类似架构模型的分类性能。

CLIP 是否可以用于艺术风格分类而非实体分类？

目前基于 CLIP 的图像分类方法在含有多个 class 的单个图像上可能表现不佳。对于多 class 的图像分类需要改进分类方法，或者是结合目标检测方法来实现。

[Image Classification with OpenAI Clip | by Jett chen | Medium](https://medium.com/@JettChenT/image-classification-with-openai-clip-3ab5f1c23e35)

[About the ImageNet zero-shot performance with the released models - Issue #24 - openai/CLIP](https://github.com/openai/CLIP/issues/24)

[→Prompt Engineering](../Prompt/README.md)

### Image captioning
Although CLIP is trained on image-caption datasets, it cannot be directly used for image captioning.