#import "@local/ib:0.1.0": *
#show: ib
#show: code.typst
#title[Icon Sets]

#md(`[Category:Icon sets - Wikimedia Commons](https://commons.wikimedia.org/wiki/Category:Icon_sets)`)

= List
- #md(`[Nerd Fonts: Iconic font aggregator, glyphs/icons collection, & fonts patcher](https://www.nerdfonts.com/)`)

- #md(`[Font Awesome](https://fontawesome.com/)`)
  - 63,119 icons

- #md(`[Material Symbols & Icons - Google Fonts](https://fonts.google.com/icons)`)
  - \~6896 icons

- #md(`[Tabler Icons: 4950+ free vector icons for web design](https://tabler.io/icons)`)
  - Font
    
    #quote[Since some time ago, the Tabler.io team has decided to exclude the webfonts from the free tier and moved them into the \$5 tier. While it is sad, I do understand, that they want to earn a bit more cash from it.]

- #md(`[Simple Icons: 3370 SVG icons for popular brands](https://simpleicons.org/?q=github)`)
  #github("https://github.com/simple-icons/simple-icons")

  #import "@preview/sicons:15.13.0"
  #box(sicons.sicon(slug: "youtube"))
  #box(sicons.sicon(slug: "niconico"))
  #box(sicons.sicon(slug: "bilibili"))

- #md(`[Octicons: A scalable set of icons handcrafted by GitHub. | Primer](https://primer.style/octicons/)`)
  - \~310 icons

- #md(`[Heroicons: Beautiful hand-crafted SVG icons, by the makers of Tailwind CSS.](https://heroicons.com/)`)
  - 316 icons

- ISO 7010
  #wikipedia("https://en.wikipedia.org/wiki/ISO_7010")

= Web
- #md(`[xicons: SVG Vue/React components integrated from fluentui-system-icons, ionicons, ant-design-icons, material-design-icons, Font-Awesome, tabler-icons and carbon icons. (Vue3, Vue2, React, SVG)](https://github.com/07akioni/xicons)`)
  (discontinued)
  - No `Icon` prefix
  - #md(`[引入图标库的图标后很影响项目的打包速度 - Issue #870](https://github.com/07akioni/xicons/issues/870)`)

= Typst
Packages:
- Nerd Fonts: #md(`[nerd-icons](https://typst.app/universe/package/nerd-icons)`)
  - Font
- Font Awesome: #md(`[fontawesome](https://typst.app/universe/package/fontawesome)`)
  - Font
- Tabler Icons
  - #md(`[use-tabler-icons](https://typst.app/universe/package/use-tabler-icons)`)
    - Font
  - #md(`[tableau-icons](https://typst.app/universe/package/tableau-icons)`)
    - Font
- Simple Icons: #md(`[sicons](https://typst.app/universe/package/sicons)`)
  - 5.2 MB, GZIP: 2.3 MB
  ```typst-ex
  #import "@preview/sicons:15.13.0"
  #box(sicons.sicon(slug: "youtube"))
  #box(sicons.sicon(slug: "niconico"))
  #box(sicons.sicon(slug: "bilibili"))
  ```
- Octicons: #md(`[octique](https://typst.app/universe/package/octique)`)
- #md(`[iconic-salmon-svg: A Typst library for Social Media references with scalable vector graphics icons.](https://typst.app/universe/package/iconic-salmon-svg)`)
  - #md(`[socialhub-fa: A Typst library for Social Media references with icons based on Font Awesome.](https://typst.app/universe/package/socialhub-fa)`)
- #md(`[scienceicons: SVG icons for open-science articles](https://typst.app/universe/package/scienceicons)`)
