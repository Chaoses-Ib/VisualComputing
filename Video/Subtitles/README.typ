#import "@local/ib:0.1.0": *
#title[Subtitles]
#a-badge[https://en.wikipedia.org/wiki/Subtitles]

= Subtitle formats
#a-badge[https://en.wikipedia.org/wiki/Subtitles#Subtitle_formats]

Sequential/Elapsed time:
- *SubRip (`.srt`)*
  - WebVTT (WebSRT, `.vtt`)
    #a-badge[https://en.wikipedia.org/wiki/WebVTT]
- *(Advanced) SubStation Alpha* (`.ssa`, `.ass`)
- XML
  - MPEG-4 Timed Text (MP4TT, TTXT, MOV TEXT, `.ttxt`)
    #a-badge[https://en.wikipedia.org/wiki/MPEG-4_Part_17]
  - Timed Text Markup Language (TTML, `.ttml`)
    #a-badge[https://en.wikipedia.org/wiki/Timed_Text_Markup_Language]
  - Structured Subtitle Format (`.ssf`)
  - Universal Subtitle Format (`.usf`)
  - HTML
    - RealText (`.rt`)
- Binary
  - VobSub (`.sub` + `.idx`)
- MPSub (`.sub`)
- PowerDivX	(`.psb`)
- SubViewer (`.sub`, `.sbv`)

Framings:
- MicroDVD (`.sub`)
- HTML
  - SAMI (`.smi`)

PotPlayer: #{
  show ";": ";" + sym.zws
  `*.smi;*.srt;*.sub;*.psb;*.ssa;*.ass;*.txt;*.idx;*.usf;*.xss;*.ssf;*.rt;*.sup;*.lrc;*.vtt;*.sbv;*.xml;*.ttml;*.ytt;*.md;*.json`
}

#a[Subtitle File Formats: A Comprehensive Overview | Matesub][https://matesub.com/resources/subtitle-file-formats]

#a[best subtitle format? : r/PleX][https://www.reddit.com/r/PleX/comments/wu45uv/best_subtitle_format/]

= Libraries
== Rust
- #a[kaegi/subparse: Rust library to load, change and write common subtitle formats][https://github.com/kaegi/subparse]
  (discontinued)
- #a[ylysyym/aspasia: A subtitle parsing library written in Rust][https://github.com/ylysyym/aspasia]
- #a[gwen-lg/subtile: Subtitles utils crate][https://github.com/gwen-lg/subtile]

SRT:
- #a[emk/subtitles-rs: Use SRT subtitle files to study foreign languages (in progress)][https://github.com/emk/subtitles-rs]
  - FFmpeg
- #a[rossnomann/srtparse: A library for reading SRT Subtitles][https://github.com/rossnomann/srtparse]
- #a[smackysnacks/skrt: Lightweight, zero-copy SubRip Text (SRT) subtitle library for Rust - std only, no dependencies][https://github.com/smackysnacks/skrt]
- #a[progga/subtitles: Text blob to SRT format subtitle generator][https://github.com/progga/subtitles]

WebVTT:
- #a[Govcraft/vtt: Rust type library for parsing and serializing WebVTT files using Serde.][https://github.com/Govcraft/vtt]

ASS:
#footnote[#a[Search Results for '\#ass' - crates.io: Rust Package Registry][https://crates.io/search?q=%23ass]]
- #a[Aavtic/ass_parser: Rust crate that let's you create, parse and modify ASS files.][https://github.com/aavtic/ass_parser]

  #a[AssParser - A parser for Advanced SubStation Alpha (.ass) files. : r/rust][https://www.reddit.com/r/rust/comments/1ky7dyb/assparser_a_parser_for_advanced_substation_alpha/]

= Embedding in videos
Formats:
#footnote[#a[Comparison of video container formats - Wikipedia][https://en.wikipedia.org/wiki/Comparison_of_video_container_formats#Subtitle_formats_support]]
- Matroska (MKV)
  - SRT
    - WebVTT
  - *ASS*
  - VobSub
- MP4
  #footnote[
  #a[adding .srt files to videos : r/VideoEditing][https://www.reddit.com/r/VideoEditing/comments/135049r/adding_srt_files_to_videos/]]
  #footnote[
  #a[how to embed subtitles into a mp4 without burning it permanently? : r/VLC][https://www.reddit.com/r/VLC/comments/1i56tjk/how_to_embed_subtitles_into_a_mp4_without_burning/]]
  - TTXT
  - WebVTT
  - VobSub
- WebM
  #footnote[#a[what are the subtitle formats to embed subtitle to WebM videos using FFmpeg? : r/ffmpeg][https://www.reddit.com/r/ffmpeg/comments/i42j4p/what_are_the_subtitle_formats_to_embed_subtitle/]]
  - WebVTT
- Flash Video
  - F4V
    - TTXT
  - FLV
    - ActionScript
- 3GP, 3G2
  - TTXT
- QTFF
  - TTXT
- RMVB
  - RealText
- ASF
  - SAMI
- VOB
  - VobSub
- AVI: Needs alterations

#a[Subtitle Supported Video Formats : r/VideoEditing][https://www.reddit.com/r/VideoEditing/comments/1fyjz0s/subtitle_supported_video_formats/]

#a[Embedding Subtitles in video without re-rendering : r/VideoEditing][https://www.reddit.com/r/VideoEditing/comments/1994xt4/embedding_subtitles_in_video_without_rerendering/]

== Libraries
FFmpeg:
- #a[skanderjeddi/unbundle: unbundle --- Fast, ergonomic Rust media extraction with a beautiful CLI. Frames, audio, subtitles, thumbnails, remux, analysis --- all with zero boilerplate.][https://github.com/skanderjeddi/unbundle]
- #a[jdomenechb/extract-subs: Extracts subs from MKV files into SRT files. Written in Rust.][https://github.com/jdomenechb/extract-subs]
  - Using `mkvextract` and `ffmpeg`.
- #a[kevinmichaelchen/subtitles: 🎬 Crash-safe Rust pipeline for generating multi-language subtitles from video files --- fast, resumable, and designed for batch jobs][https://github.com/kevinmichaelchen/subtitles]

== Tools
- #a[mkvextract -- extract tracks from Matroska files into other files][https://mkvtoolnix.download/doc/mkvextract.html]

  #a[Extract .srt "quickly" from large .mkv file - Help - MKVToolNix community & help forum][https://help.mkvtoolnix.download/t/extract-srt-quickly-from-large-mkv-file/253]
