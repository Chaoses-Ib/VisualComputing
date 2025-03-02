# Color Spaces
[Wikipedia](https://en.wikipedia.org/wiki/Color_space)

## Y'UV
[Wikipedia](https://en.wikipedia.org/wiki/Y%E2%80%B2UV)

> A color is described as a Y′ component (luma) and two chroma components U and V. The prime symbol (') denotes that the luma is calculated from gamma-corrected RGB input and that it is different from true luminance.

> Today, the term YUV is commonly used in the computer industry to describe colorspaces that are encoded using YCbCr.

## Y'CbCr
[Wikipedia](https://en.wikipedia.org/wiki/YCbCr)

> Y′ is the luma component and CB and CR are the blue-difference and red-difference chroma components. Luma Y′ (with prime) is distinguished from luminance Y, meaning that light intensity is nonlinearly encoded based on gamma corrected RGB primaries.

### Packed pixel formats
[Wikipedia](https://en.wikipedia.org/wiki/YCbCr#Packed_pixel_formats_and_conversion)

> YCbCr Packed pixel formats are often referred to as "YUV". Such files can be encoded in 12, 16 or 24 bits per pixel. Depending on subsampling, the formats can largely be described as 4:4:4, 4:2:2, and 4:2:0p. The apostrophe after the Y is often omitted, as is the "p" (for planar) after YUV420p. In terms of actual file formats, 4:2:0 is the most common, as the data is more reduced, and the file extension is usually ".YUV". The relation between data rate and sampling (A:B:C) is defined by the ratio between Y to U and V channel. The notation of "YUV" followed by three numbers is vague: the three numbers could refer to the subsampling (as is done in "YUV420"), or it could refer to bit depth in each channel (as is done in "YUV565"). The unambiguous way to refer to these formats is via the FourCC code.

[How important is YUV 4:4:4 vs 4:2:0? (re: 4K, HDMI matrixes, etc) : r/PS4Pro](https://www.reddit.com/r/PS4Pro/comments/8xw3ad/how_important_is_yuv_444_vs_420_re_4k_hdmi/)
> Something to keep in mind is almost ALL video content is encoded down to 4:2:0, that means DVD, Blu-ray, UHD Blu-ray, Netflix, YouTube, Hulu, etc, etc, etc. It's the cheapest form of video compression, tossing out that extra color information.
>
> For games it's a bit different, since most of them output full 4:4:4 chroma and your video cables and TV handle the rest, displaying it however it needs to, and we all want the best of the best all the time. However, I'd venture to say that most people, whether they believe it or not, are not seeing the difference between 4:4:4 and 4:2:0 when a game is in motion, on a display that is only X-inches and is X-distance away from them. Someone here will probably argue this point. Someone always does. The fact of the matter is that we still have people that say they can't see the difference between 4K and 1080p and say devs should focus on frame rate, and then act like they can tell if a game is using chroma subsampling at 6-feet from their screen. They can't, but they want to think they can.

> I looked into this extensively and even professional calibrators told me that it really doesn’t matter that much unless you aee using your tv as a pc monitor it’s literally so text is easier to read

[YUV 422 , YUV 420 ,YUV 444 Any significant difference in file size really? : r/VideoEditing](https://www.reddit.com/r/VideoEditing/comments/a8nqm7/yuv_422_yuv_420_yuv_444_any_significant/)
> Media with 4:4:4 sampling media is also only REALLY used for creative purposes. 4:4:4 media is usually too big to be efficiently available online for viewing, which is why most media has LESS data, e.g. 4:2:0 sampling for streaming media. Normally, although there is visual quality loss from 4:4:4 to 4:2:2 to 4:2:0, it's either visually negligible or tolerated due to the speed at which is buffers and plays.

> x264 compresses 444 almost as efficiently as 420 or even more efficiently (meaning that it may even result in smaller files in some cases). That is because lowering chroma resolution is actually a very inefficient way of saving bits on chroma; for small CRF values (< ca. 28) / high bitrates, applying a higher quantizer on full resolution chroma compresses better than using a weaker quantizer on downscaled chroma (while maintaining a similiar quality level).
