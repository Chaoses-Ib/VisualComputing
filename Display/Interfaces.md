# Video Interfaces
[Audio and video interfaces and connectors - Wikipedia](https://en.wikipedia.org/wiki/Audio_and_video_interfaces_and_connectors)

[History of display interfaces: The journey from composite video to HDMI and DisplayPort](https://www.xda-developers.com/history-display-interfaces/)

Common combinations:
- HDMI v2.0 + DP v1.2
- HDMI v2.1 + DP v1.4

[AM5主板参数对比表](https://shimo.im/sheets/Q5KaHeypxH4jE9An/kB49K)
- 上限为 HDMI v2.1 + DP v1.4
- B650 大部分都是 HDMI + DP，但也有支持 Type-C、VGA、多 DP 和多 HDMI 的

[\[硬件求助\] 电脑想要双屏工作，但是机箱只有一个HDMI接口，何解？ 178](https://nga.178.com/read.php?tid=36895072&rand=831)

[独立显卡的接口不够用，还想用主板的hdmi接口，再接一个显示器，可以吗？](https://www.zhihu.com/tardis/zm/ans/2736588905)
> 多显就买quadro系列即可（一开始就是为多显而生，后来才把专业渲染作图定位移到这个系列上），quadro有几个口就能同时插几个口
>
> 再找（买）一块 P400 的亮机卡即可，全新的也就几百块，能找到旧的最好，基本不坏，炒股的很多都用这张卡接多显，有3个mDP，只有30w，适合长时间开机省电，性能就是亮机卡、炒股、监控、卖场电视之类纯亮机就行的
> 
> 没有5个接口的单块显卡（个别x080有5个口，但是最多好像只能同时接4个显示器，所以…），都只有4个，所以都要两块才能连5个显示器

[主板只有一个HDMI能双屏吗？ - 知乎](https://www.zhihu.com/question/455322456)

## Bandwidth
`(H + Hblank) × (V + Vblank) × C × F`

Or `H × V × C × F × 1.05`

[Refresh frequency limits for standard video - Wikipedia](https://en.wikipedia.org/wiki/DisplayPort#Refresh_frequency_limits_for_standard_video)

[Data Rate / Maximum Refresh Frequency Calculator - Linus Tech Tips](https://linustechtips.com/topic/729232-guide-to-display-cables-adapters-v2/?section=calc&H=3440&V=1440&F=120&calculations=show&formulas=show)

[How do you calculate DisplayPort / HDMI bandwidth? : r/Monitors](https://www.reddit.com/r/Monitors/comments/ayvt4r/how_do_you_calculate_displayport_hdmi_bandwidth/)

## VGA

## DVI

## High-Definition Multimedia Interface (HDMI)
[Wikipedia](https://en.wikipedia.org/wiki/HDMI)

Versions:
- 1.0~1.2a
- 1.3~1.3a
- 1.4~1.4b
- 2.0~2.0b
  - 2 video streams ("to multiple users on the same screen"?), 4 audio streams

    [display - HDMI Multi-Stream Transport - Super User](https://superuser.com/questions/1560184/hdmi-multi-stream-transport)
- 2.1~2.1b

## DisplayPort (DP)
[Wikipedia](https://en.wikipedia.org/wiki/DisplayPort)

Versions:
- 1.0~1.1a
  - RBR, HBR
  - 4K/40Hz, 1080p/154Hz
- 1.2~1.2a
  - HBR2
  - 4K/81Hz
  - Multi-Stream Transport (MST)
- 1.3
  - HBR3
  - 4K/120Hz, 8K/31Hz
- 1.4~1.4a
  - HBR3
  - DSC 1.2, DSC 1.2a
- 2.0~2.1a
  - UHBR 10, UHBR 13.5, UHBR 20
  - 8K/60Hz

### Multi-Stream Transport (MST)
> Multi-Stream Transport is a feature first introduced in the DisplayPort 1.2 standard. It allows multiple independent displays to be driven from a single DP port on the source devices by multiplexing several video streams into a single stream and sending it to a *branch device*, which demultiplexes the signal into the original streams. Branch devices are commonly found in the form of an **MST hub**, which plugs into a single DP input port and provides multiple outputs, but it can also be implemented on a display internally to provide a DP output port for **daisy-chaining**, effectively embedding a 2-port MST hub inside the display. With the release of MST, standard single-display operation has been retroactively named "SST" mode (Single-Stream Transport).

> Theoretically, up to 63 displays can be supported,  but the combined data rate requirements of all the displays cannot exceed the limits of a single DP port (17.28 Gbit/s for a DP 1.2 port, or 25.92 Gbit/s for a DP 1.3/1.4 port). In addition, the maximum number of links between the source and any device (i.e. the maximum length of a daisy-chain) is 7, and the maximum number of physical output ports on each branch device (such as a hub) is 7.

> MST is supported by USB Type-C DisplayPort Alternate Mode, so standard DisplayPort daisy-chains and MST hubs do function from Type-C sources with a simple Type-C to DisplayPort adapter.

> The host system's software also needs to support MST for hubs or daisy-chains to work. While Microsoft Windows environments have full support for it, Apple operating systems currently do not support MST hubs or DisplayPort daisy-chaining as of macOS 10.15 ("Catalina"). DisplayPort-to-DVI and DisplayPort-to-HDMI adapters/cables may or may not function from an MST output port; support for this depends on the specific device.

[Active DP>HDMI adapters with DisplayPort MST - Video Connector Adapters, Converters, and Cables / DP-HDMI & MDP-HDMI - Plugable Support](https://support.plugable.com/t/active-dp-hdmi-adapters-with-displayport-mst/10424)

[Display Port to HDMI converter over Multi Stream Suport : r/elgato](https://www.reddit.com/r/elgato/comments/15nshjt/display_port_to_hdmi_converter_over_multi_stream/)

## USB Type-C
[【求助】微星B660M迫击炮主板Type-c接口问题 - 电脑讨论(新) - Chiphell - 分享与交流用户体验](https://www.chiphell.com/thread-2438577-1-1.html)
> 大部分台式机主板上的 Type-C 都是不带显示输出的

[台式机主板上的Type-C接口如何支持dp输出？ - 知乎](https://www.zhihu.com/question/527627769)

## Adapters
### HDMI-to-VGA adapters
Brands:
- 达而稳
  - 不兼容部分 HDMI 输出设备，例如奇异果机顶盒、达而稳 DP-to-HDMI adapter

### DP-to-HDMI adapters
Brands:
- 达而稳
  - 4K/60Hz (DP 1.2): 8元
    - 虚标？
- 优联
  - 4K/30Hz (DP 1.0): 8元
  - 4K/60Hz (DP 1.2): 13元
- 晶华
  - 9元
  - 4K/60Hz (DP 1.2): 18元
- ULT-unite
  - 4K/120Hz (DP 1.3): 30元
  - 8K/60Hz (DP 2.0): 87元
- 绿联
  - 4K/30Hz (DP 1.0): 38元
  - 4K/60Hz (DP 1.2): 55元

[原来DP转HDMI后真的能上144Hz - 知乎](https://zhuanlan.zhihu.com/p/376077093)
