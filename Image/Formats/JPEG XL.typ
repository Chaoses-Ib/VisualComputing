#import "@local/ib:0.1.0": *
#show: ib
#title[#a[JPEG XL][https://jpeg.org/jpegxl/]]
#a-badge[https://en.wikipedia.org/wiki/JPEG_XL]

#a[JPEG XL: Superior Image Compression][https://jpegxl.info/]

= Parameters
- Butteraugli distance: $[0,15]$

  #q[Lower means better quality. Lossless is 0.0, and 1.0 is approximately equivalent to JPEG quality 90 for photographic content.
  Use 0.1 for "visually lossless" screenshots.]
  - #q[Is this actually helpful advice? Jxl is specifically designed to be visually lossless at 1.0, and as long as you don't zoom in and pixel peep it works imho.
    It's sort of the killer feature. I imagine for post progressing or image analysis or to avoid generational loss it might be useful.]

- Compression effort: $[1,11]$

  #a[`libjxl/doc/encode_effort.md`][https://github.com/libjxl/libjxl/blob/main/doc/encode_effort.md]

  #q[Higher effort (usually) means better compression, but takes more CPU time.]

  #q-i[jxl 9级压缩一张 4K 图需要 20 秒，比 7z 还慢一个数量级……]

#a[Distance vs Effort Visualizer -- JPEG XL][https://jpegxl.info/resources/distance-vs-effort-visualizer.html]

#footnote[#a[Help Me Understand JXL Distance & Effort | For Taking Lossless Screenshots In mpv : r/jpegxl][https://www.reddit.com/r/jpegxl/comments/1fvwr4x/help_me_understand_jxl_distance_effort_for_taking/]]

= Libraries
C++:
- #a[libjxl/libjxl: JPEG XL image format reference implementation][https://github.com/libjxl/libjxl]

Rust:
- #a[libjxl/jxl-rs][https://github.com/libjxl/jxl-rs]

= Platforms
Windows:
- #a[JPEG XL Image Extension][https://apps.microsoft.com/detail/9mzprth5c0tb]
  - Photos
  - Directory Opus
