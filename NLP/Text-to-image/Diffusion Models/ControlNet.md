# ControlNet
[\[2302.05543\] Adding Conditional Control to Text-to-Image Diffusion Models](https://arxiv.org/abs/2302.05543)

## Implementations
[ControlNet: Let us control diffusion models!](https://github.com/lllyasviel/ControlNet)

[sd-webui-controlnet: WebUI extension for ControlNet](https://github.com/Mikubill/sd-webui-controlnet)
- [How to Install ControlNet for Stable Diffusion's Automatic1111 Webui - YouTube](https://www.youtube.com/watch?v=LnqNyd21x9U)
- [How to Use ControlNet with Automatic1111’s Stable Diffusion Web UI | kombitz](https://www.kombitz.com/2023/02/18/how-to-use-controlnet-with-automatic1111-stable-diffusion-web-ui/)

## Openpose
[OpenPose: Real-time multi-person keypoint detection library for body, face, hands, and foot estimation](https://github.com/CMU-Perceptual-Computing-Lab/openpose)

![](https://maelfabien.github.io/assets/images/img1.jpg)

- [Openpose Editor](https://github.com/fkunn1326/openpose-editor)
- [sd-webui-3d-open-pose-editor](https://github.com/nonnonstop/sd-webui-3d-open-pose-editor)
- [Stable Diffusion WebUI 3D Model Loader](https://github.com/jtydhr88/sd-3dmodel-loader)
- [Jo Jo's Bizarre Pose Helper | Stable Diffusion Poses | Civitai](https://civitai.com/models/13025/jo-jos-bizarre-pose-helper)

使用 ControlNet 也可能反而会导致异形，在使用 inpaint 修复 ControlNet 生成的异形时时可以尝试关闭 ControlNet。

ControlNet 对于图像存在肢体重叠时仍然表现不佳。