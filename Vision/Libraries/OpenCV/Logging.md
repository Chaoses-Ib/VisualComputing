# Logging
[OpenCV: Logging facilities](https://docs.opencv.org/4.x/d3/dcb/group__core__logging.html#gaa022dd6c6e2d72539cc1e5100bcb378b)

## setLogLevel
默认是 INFO，不适合 CLI 程序。
```cpp
#include <opencv2/core/utils/logger.hpp>

cv::utils::logging::setLogLevel(cv::utils::logging::LogLevel::LOG_LEVEL_WARNING);
```
