# Variational Autoencoder
[Wikipedia](https://en.wikipedia.org/wiki/Variational_autoencoder)

[在StableDiffusion中说起VAE时,我们在谈论什么? - 知乎](https://zhuanlan.zhihu.com/p/599129815)

不同 VAE 间的效果差别类似滤镜。

## modules.devices.NansException: A tensor with all NaNs was produced in VAE
```
modules.devices.NansException: A tensor with all NaNs was produced in VAE. This could be because there's not enough precision to represent the picture. Try adding --no-half-vae commandline argument to fix this. Use --disable-nan-check commandline argument to disable this check.
```

使用 `--no-half-vae` 可以解决，但会增加显存占用；也可以尝试通过更换 VAE 来解决；该问题似乎也与 upscaler 和图像分辨率有关；ComfyUI 没有该问题。

由于该异常会中止 batch，推荐默认使用 `--disable-nan-check`。

- [\[Bug\]: A tensor with all NaNs was produced in Unet · Issue #6923 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/6923)
- [NansException: A tensor with all NaNs was produced in VAE on some images in img2img](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/7633)
- [Help with Stable Diffusion NaNs error? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10eikja/help_with_stable_diffusion_nans_error/)
- [Is there any issue leaving the command line arg "--no-half-vae" in there full-time? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10g41ax/is_there_any_issue_leaving_the_command_line_arg/)