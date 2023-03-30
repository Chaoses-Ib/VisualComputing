# Variational Autoencoder
[Wikipedia](https://en.wikipedia.org/wiki/Variational_autoencoder)

[在StableDiffusion中说起VAE时,我们在谈论什么? - 知乎](https://zhuanlan.zhihu.com/p/599129815)

不同 VAE 间的效果差别类似滤镜。

VAEs:
- None

  会导致画面的色彩比较淡。
- [stabilityai/sd-vae-ft-mse-original](https://huggingface.co/stabilityai/sd-vae-ft-mse-original) (`vae-ft-mse-840000-ema-pruned.ckpt`)
- `mse840000_klf8anime.vae.pt`
- `pastel-waifu-diffusion.vae.pt`

- `orangemix.vae.pt`

## modules.devices.NansException: A tensor with all NaNs was produced in VAE
```python
modules.devices.NansException: A tensor with all NaNs was produced in VAE. This could be because there's not enough prec  
ision to represent the picture. Try adding --no-half-vae commandline argument to fix this. Use --disable-nan-check comma  
ndline argument to disable this check.
```

[\[Bug\]: A tensor with all NaNs was produced in Unet · Issue #6923 · AUTOMATIC1111/stable-diffusion-webui](https://github.com/AUTOMATIC1111/stable-diffusion-webui/issues/6923)

[Help with Stable Diffusion NaNs error? : StableDiffusion](https://www.reddit.com/r/StableDiffusion/comments/10eikja/help_with_stable_diffusion_nans_error/)

`--no-half-vae`
