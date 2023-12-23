# GUI
[OpenCV: Gui Features in OpenCV](https://docs.opencv.org/4.x/dc/d4d/tutorial_py_table_of_contents_gui.html)
- [OpenCV: Getting Started with Images](https://docs.opencv.org/4.x/db/deb/tutorial_display_image.html)
  
  `<opencv2/highgui.hpp>`

## `imshow` 窗口未响应
只有在 `waitKey` 中才会处理窗口消息，因此要显示窗口就必须调用 `imshow`，如果 delay 不是 0 的话也要记得在 `waitKey` 后 `destroyWindow`/`destroyAllWindows`（后者可以统一处理 0 和非 0 的 delay）。