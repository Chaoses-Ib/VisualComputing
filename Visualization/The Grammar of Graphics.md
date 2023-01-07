# The Grammar of Graphics
- 语法是描述如何用语言的字母表生成有效字符串的规则
- 图形语法是将图形元素作为字母表，用语言来描述图形的语法
- 图表库的传统实现方法是堆砌各种图表，图表实现之间复用度很低，开发成本高，图表类型受限
- 使用图形语法实现图表库不仅能降低开发成本，提高模块复用度，还能扩充图表库所能绘制的图表空间

## Implementations
JavaScript:
- [G2](Libraries/AntV/G2)
- [Vega](https://vega.github.io/vega/) ([GitHub](https://github.com/vega/vega))
  
  Vega is a visualization grammar, a declarative language for creating, saving, and sharing interactive visualization designs. With Vega, you can describe the visual appearance and interactive behavior of a visualization in a JSON format, and generate web-based views using Canvas or SVG.
  
  - [Vega-Lite](https://vega.github.io/vega-lite/) ([GitHub](https://github.com/vega/vega-lite))
  
    Vega-Lite is a high-level grammar of interactive graphics. It provides a concise, declarative JSON syntax to create an expressive range of visualizations for data analysis and presentation.

R:
- [ggplot2](https://ggplot2.tidyverse.org/) ([GitHub](https://github.com/tidyverse/ggplot2/))
