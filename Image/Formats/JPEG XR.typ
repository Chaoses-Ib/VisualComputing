#import "@local/ib:0.1.0": *
#show: ib
#title[JPEG XR]
#a-badge[https://en.wikipedia.org/wiki/JPEG_XR]
- Lossy/Lossless compression
- Tile structure support
- HDR
- Transparency map support
- Metadata
  - ICC color profile
  - Exif
  - XMP

Supported by:
- Windows
  - WIC
  - Wallpaper
    #footnote[#a[Windows 11 now supports HDR wallpapers in JXR format - Neowin][https://www.neowin.net/news/windows-11-now-supports-hdr-wallpapers-in-jxr-format/]]
  - Photos
- Adobe Photoshop
  #footnote[#a[JXL on windows 11 : r/jpegxl][https://www.reddit.com/r/jpegxl/comments/1kd77j9/jxl_on_windows_11/]]
- [ ] ffmpeg
  #footnote[#a[[Suggestion] .jxr [JPEG XR] HDR image support - Issue \#14055][https://github.com/mpv-player/mpv/issues/14055]]

Used by (when HDR is on):
- Windows
  - GameBar: Lossless JXR + PNG, but only PNG can be shown/deleted.
- NVIDIA overlay: JXR only, can view thumbnail but not full image.
  #footnote[#a[JXR screenshots : r/GeForceExperience][https://www.reddit.com/r/GeForceExperience/comments/t5uids/jxr_screenshots/]]

#a[Don't use JPEG-XR on the Web - Web Performance Calendar][https://calendar.perfplanet.com/2018/dont-use-jpeg-xr-on-the-web/]
#a-badge[https://news.ycombinator.com/item?id=18794528]

= Tools
#footnote[#a[JXR to JXL : r/jpegxl][https://www.reddit.com/r/jpegxl/comments/1q3x5xg/jxr_to_jxl/]]
#footnote[#a[Is there a program that converts HDR capture .JXR to another HDR format? - community - Discussion \#165639][https://github.com/orgs/community/discussions/165639]]

- #a[ledoge/jxr_to_avif: HDR JPEG-XR -> AVIF converter][https://github.com/ledoge/jxr_to_avif]
  - #a[ledoge/jxr_to_png: HDR JPEG XR -> PNG converter][https://github.com/ledoge/jxr_to_png]
- #a[tfx2001/jxr2uhdr: Convert JXR HDR images to Ultra HDR JPEGs][https://github.com/tfx2001/jxr2uhdr]
