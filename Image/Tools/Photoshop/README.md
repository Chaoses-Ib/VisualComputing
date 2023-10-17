# [Photoshop](https://www.adobe.com/products/photoshop.html)
[Photoshop User Guide](https://helpx.adobe.com/photoshop/user-guide.html)

[【空罐王】簡易PHOTOSHOP入門!!學會這三個功能你也能用PS畫畫! - YouTube](https://www.youtube.com/watch?v=ZyRhrNkwDFs&list=PLuuYT1vCaNTS1uvf9uuqZc57iyDCiApVc&index=2)
- [【空罐王】簡易PHOTOSHOP入門第二集! 關於調色的五個功能! - YouTube](https://www.youtube.com/watch?v=fVGbsjnKS5I&list=PLuuYT1vCaNTS1uvf9uuqZc57iyDCiApVc)

## Adobe
[Wikipedia](https://en.wikipedia.org/wiki/Adobe_Inc.)

[Change the country associated with your Adobe account](https://helpx.adobe.com/x-productkb/policy-pricing/change-country-associated-with-adobe-id.html)
- [adobe id更改地区? - 知乎](https://www.zhihu.com/question/64717484/answer/3083587229)
- 推荐选择 United States，不要选择 China。

## Installation
- [CCMaker – Adobe CC 2015~2018 All Products one-click downloader, installer & activator | AppNee Freeware Group.](https://appnee.com/ccmaker/)
- [Adobe-GenP: Adobe CC 2019/2020/2021/2022/2023 GenP Universal Patch 3.0](https://github.com/cw2k/Adobe-GenP)
- [Warez by m0nkrus](https://w14.monkrus.ws/)
- [@vposy 的个人主页 - 微博](https://weibo.com/vposy)

  [Adobe CC by @vposy](https://t.me/adobe_vposy)

  [为什么面对Adobe的版权要求下，vposy大神还能从容不迫？ - 知乎](https://www.zhihu.com/question/389392505)
- [AMTEmu – Universal Adobe Patcher](https://amtemu-official.com/) (discontinued)

[Adobe 系列软件中英文版本的切换_MediaTea的博客 - CSDN博客](https://blog.csdn.net/qq_41176800/article/details/112792590)

## Generative AI
- [Experience the future of Photoshop with Generative Fill](https://helpx.adobe.com/photoshop/using/generative-fill.html)

Plugins:
- [Auto-Photoshop-StableDiffusion-Plugin: A user-friendly plug-in that makes it easy to generate stable diffusion images inside Photoshop using Automatic1111-sd-webui as a backend.](https://github.com/AbdullahAlfaraj/Auto-Photoshop-StableDiffusion-Plugin#demo)
  - inpaint

    [\[Feature suggestion\]: More intuitive inpainting · Issue #232 · AbdullahAlfaraj/Auto-Photoshop-StableDiffusion-Plugin](https://github.com/AbdullahAlfaraj/Auto-Photoshop-StableDiffusion-Plugin/issues/232)

    - 在 inpaint 时必须选择区域，不能默认使用整张图片。
      
    - inpaint 输出的是完整图像，如果需要保存 mask，不要将 mask 画到 `Mask - Paint White to Mask - temporary` layer 上。

      [Settings and inpaint question · Issue #95 · AbdullahAlfaraj/Auto-Photoshop-StableDiffusion-Plugin](https://github.com/AbdullahAlfaraj/Auto-Photoshop-StableDiffusion-Plugin/issues/95)
- [Concept.art | Adobe Exchange](https://exchange.adobe.com/apps/cc/114117da/stable-diffusion)

## Image and color basics
- [Choose colors](https://helpx.adobe.com/photoshop/using/choosing-colors.html)

  - Color panel
  
    Hue slider 长度：Color Wheel > Hue Cude > HSB Sliders

    Color Wheel 在用笔调 Hue 的时候很容易挡到 triangle。

    [Color Game](https://color.method.ac/)

  - Swatches panel

    History colors.

## Layers
- 只能通过 `Layer > Hide Layers` (`Ctrl+,`) 来批量隐藏或显示 layers，无法在 Layers panel 中直接实现。

## Selections
- [Get started with selections](https://helpx.adobe.com/photoshop/using/making-selections.html)

Selection 不能同时选中多个 layer 中的图像，只能合并后再选中。

## Image adjustments
- [Replace object colors in 3 simple ways](https://helpx.adobe.com/photoshop/using/replace-colors.html)

## Image repair and restoration
- Remove Tool

  - `Remove after each stroke`
  
    不能在按下笔时改变笔刷大小。

  - 除了移除物体，Remove Tool 也可作为简单的修复工具，比如让边缘过渡更加自然。

## Drawing and painting
- [Brush presets](https://helpx.adobe.com/photoshop/using/brush-presets.html)

  Websites:
  - [Brusheezy](https://www.brusheezy.com/)
  - [myPhotoshopBrushes](https://myphotoshopbrushes.com/)

  Liquid:
  - [水面雨滴PS笔刷 - 笔刷下载 - 素材集市](http://www.sucaijishi.com/brush-34-1090-1.html)
  - [Free Blood Photoshop Brushes 3 - Brusheezy](https://www.brusheezy.com/brushes/60148-free-blood-photoshop-brushes-3)
  - [14 Dripping Liquid Brushes - Photoshop brushes](https://myphotoshopbrushes.com/brushes/id/3704/)

- [Gradients](https://helpx.adobe.com/photoshop/using/gradients.html)

  Gradient brush:
  - Color Dynamics
    - Apply Per Tip
    - Foreground/Background Jitter: 0%
    - Control: Pen Pressure

- [Draw with the Pen tools](https://helpx.adobe.com/photoshop/using/drawing-pen-tools.html)

  [The Bézier Game](https://bezier.method.ac/)

[记住这几个操作，让你的绘画上色效率飞起！ - 知乎](https://zhuanlan.zhihu.com/p/52861032)

## Saving and exporting
- Quick Export
  - 可以选择 `Export files to an assets folder next to the current document`，文件会被导出到 `{documentName}-assets\{documentName}.png`。

    但是不能导出到当前目录。

  - 可以使用 `Alt+Shift+Ctrl+Q` 作为 Quick Export 的快捷键，与 Export As 的 `Alt+Shift+Ctrl+W` 对应。