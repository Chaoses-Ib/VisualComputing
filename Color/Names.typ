#import "@local/ib:0.1.0": *
#title[Color Names]
#wikipedia("https://en.wikipedia.org/wiki/Color_term")

#md(`[Lists of colors - Wikipedia](https://en.wikipedia.org/wiki/Lists_of_colors)`)
- #md(`[meodai/wikipedia-color-names: Up to date list of wikipedia color names](https://github.com/meodai/wikipedia-color-names)`)

#md(`[Color-Name.com: Find name of the color you love!](https://www.color-name.com/)`)

= Naming systems
- CSS
- #md(`[Tailwind CSS](https://tailwindcss.com/docs/colors)`)
  - Brightness suffix
- #link(<latex>)[LaTeX]
- #link(<typst>)[Typst]
- #md(`[Scientific colour maps: colour-blind friendly and accurate palettes](https://www.fabiocrameri.ch/colourmaps/)`)
- Color Naming System (CNS) #wikipedia("https://en.wikipedia.org/wiki/Color_Naming_System")

For print:
- Pantone
- RAL

#md(`[Universal naming conventions for colors? : r/UI\_Design](https://www.reddit.com/r/UI_Design/comments/rlxfdi/universal_naming_conventions_for_colors/)`)

#md(`[What is a proven convention for naming colors with variables. : r/FigmaDesign](https://www.reddit.com/r/FigmaDesign/comments/160d10c/what_is_a_proven_convention_for_naming_colors/)`)

= LaTeX <latex>
#md(`[LaTeX/Colors - Wikibooks](https://en.wikibooks.org/wiki/LaTeX/Colors)`)

- Predefined colors
- #md(`[xcolor](https://ctan.org/pkg/xcolor)`)

#md(`[Using colors in LaTeX - Overleaf, Online LaTeX Editor](https://www.overleaf.com/learn/latex/Using_colors_in_LaTeX)`)

#md(`[LaTeX Color Definitions](https://latexcolor.com/)`)

= Typst <typst>
Packages:
- Predefined: #md(`[color](https://typst.app/docs/reference/visualize/color/#predefined-colors)`)

  #html.img(src: "https://typst.app/assets/docs/IWvUAQq21Ue1zu9gwjch-gAAAAAAAAAA.png")
- #md(`[splash: A library of color palettes for Typst.](https://typst.app/universe/package/splash)`)

  Sorted by colors:
  - *XKCD Color Survey: `xkcd`*
  - *`latexcolors`*
  - #md(`[Tailwind CSS](https://tailwindcss.com/docs/colors)`): `tailwind`
  - `google-workspace`
  - `seaborn`
  - `xcolor`
  - `tol`

  #quote(block: true)[
    #import "@preview/splash:0.5.0"
    #box(width: 3em, height: 1em, fill: splash.xcolor.dandelion)
    #box(width: 3em, height: 1em, fill: splash.tailwind.pink-300)
  ]
- #md(`[pigmentpedia: An extensive color library for Typst.](https://typst.app/universe/package/pigmentpedia/)`)
- #md(`[typewind: tailwindcss colors](https://typst.app/universe/package/typewind)`)
- #md(`[gruvy: Gruvbox colors.](https://typst.app/universe/package/gruvy)`)
- #md(`[qcm: Qualitative Colormaps](https://typst.app/universe/package/qcm)`)
- #md(`[niram-css: Allows CSS named colors to be used directly in a Typst document](https://typst.app/universe/package/niram-css)`)
