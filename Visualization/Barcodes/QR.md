# Quick-response Codes (QR Codes)
[Wikipedia](https://en.wikipedia.org/wiki/QR_code)

[QR Code - Structure, Usage and Applications | Shield UI](https://www.shieldui.com/blogs/qr.code)

[Do QR Codes Count as Data Visualization? : r/DataArt](https://www.reddit.com/r/DataArt/comments/16fowh0/do_qr_codes_count_as_data_visualization/)

[EU Code Week](https://codeweek.eu/view/2224/data-visualization-qr-codes)

## Encoding
- [libqrencode: A fast and compact QR Code encoding library](https://github.com/fukuchi/libqrencode)

## Decoding
### OpenCV
- OpenCV QR code
- OpenCV WeChat QR code ([`wechat_qrcode::WeChatQRCode`](https://docs.opencv.org/4.x/d5/d04/classcv_1_1wechat__qrcode_1_1WeChatQRCode.html))
  - [jenly1314/WeChatQRCode: ⛄ 基于OpenCV开源的微信二维码引擎移植的二维码扫码识别库](https://github.com/jenly1314/WeChatQRCode)

  [WeChat QR Code Scanner in OpenCV | LearnOpenCV](https://learnopencv.com/wechat-qr-code-scanner-in-opencv/#OpenCV-vs-WeChat-QRCode)
  > From the experiment above, we observed that OpenCV performs fairly well for QR code with lesser information. However, it performs poorly on complex QR code and mostly fails above a certain complexity. From the video, we can see that OpenCV has a better corner detection algorithm but that does not necessarily imply better decoding. WeChat is more robust to variations like rotation or when it’s far away. All in all, if you are building an application that requires parsing of complex QR code and time is a concern, then WeChat is the choice. Otherwise, the OpenCV QR code decoder works fine.

## Tools
- [MHY\_Scanner: 崩坏3，原神，星穹铁道的Windows平台的扫码和抢码登录器，支持从直播流抢码。](https://github.com/Theresa-0328/MHY_Scanner/tree/main)