# Video Processing
- ControlNet
- [Video Loopback for WebUI](https://github.com/fishslot/video_loopback_for_webui)
- Batch [image processing](../Image%20Processing/README.md)
  - [gif2gif: Automatic1111 gif extension](https://github.com/LonicaMewinsky/gif2gif)

  可能会导致视频图像闪烁。一种缓解方法是进行 frame interpolation，插帧的倍率越高，闪烁感就越低。但这样做又可能会导致产生变形感，将视频放慢可以略微缓解。

  迭代次数越小、强度越低，生成的图像稳定性越强，但迭代过少也可能导致图像不够精细。

  另一种缓解方法是在处理之前先对原视频进行 frame interpolation，在生成图像后，手动删除有问题的帧。

  也可以将生成的视频通过其它 video processing 模型进行处理。