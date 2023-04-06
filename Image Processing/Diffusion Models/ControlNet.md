# ControlNet
[\[2302.05543\] Adding Conditional Control to Text-to-Image Diffusion Models](https://arxiv.org/abs/2302.05543)

## Implementations
[ControlNet: Let us control diffusion models!](https://github.com/lllyasviel/ControlNet)
- [lllyasviel/ControlNet · Hugging Face](https://huggingface.co/lllyasviel/ControlNet)

[sd-webui-controlnet: WebUI extension for ControlNet](https://github.com/Mikubill/sd-webui-controlnet)
- [How to Install ControlNet for Stable Diffusion's Automatic1111 Webui - YouTube](https://www.youtube.com/watch?v=LnqNyd21x9U)
- [How to Use ControlNet with Automatic1111’s Stable Diffusion Web UI | kombitz](https://www.kombitz.com/2023/02/18/how-to-use-controlnet-with-automatic1111-stable-diffusion-web-ui/)

movie2movie:
- [What is Controlnet-M2M in XYZ scripts? We can upload a video there, but how does it work? · Issue #184 · lllyasviel/ControlNet](https://github.com/lllyasviel/ControlNet/issues/184)
- [\[Feature Request\]: Movie2Movie - Option to choose directory of images instead of video file · Issue #650 · Mikubill/sd-webui-controlnet](https://github.com/Mikubill/sd-webui-controlnet/issues/650)

[ControlNet image sequence 2 image sequence script](https://toyxyz.gumroad.com/l/jydvk)

## Poses
使用 ControlNet 也可能反而会导致异形，在使用 inpaint 修复 ControlNet 生成的异形时时可以尝试关闭 ControlNet。

ControlNet 对于图像存在肢体重叠时仍然表现不佳。

Extensions:
- [OpenPose](../../Computer%20Vision/3D%20Pose%20Estimation.md#Models)
  - [Openpose Editor](https://github.com/fkunn1326/openpose-editor)
- [sd-webui-3d-open-pose-editor](https://github.com/nonnonstop/sd-webui-3d-open-pose-editor)
- [Stable Diffusion WebUI 3D Model Loader](https://github.com/jtydhr88/sd-3dmodel-loader)
- [Posex - Estimated Image Generator for Pose2Image](https://github.com/hnmr293/posex)

Poses:
- [IPoser1.7.1 | Stable Diffusion Poses | Civitai](https://civitai.com/models/28250/iposer171)
- [Jo Jo's Bizarre Pose Helper | Stable Diffusion Poses | Civitai](https://civitai.com/models/13025/jo-jos-bizarre-pose-helper)