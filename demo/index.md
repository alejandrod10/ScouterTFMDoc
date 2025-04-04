---
title: "The title"
author: [Super Mario]
date: "\\today"
subject: "Markdown"
keywords: [Markdown, Example]
book: true
classoption: [twoside]
titlepage: true
toc: true
toc-depth: 1
lof: true
lot: true
numbersections: true
fontsize: 11pt
fontfamily: cmbright
header-left: "\\thetitle"
header-center: "\\hspace{0cm}"
header-right: "\\hspace{0cm}"
footer-left: "\\hspace{0cm}"
footer-center: "\\hspace{0cm}"
footer-right: "\\thepage"
caption-justification: centering
biblatex: true
bibliography: demo/references.bib
csl: templates/ieee.csl
header-includes:
    - \usepackage{microtype}                                # Tweak font spacing for aesthetics
    - \usepackage[T1]{fontenc}                              # 8-bit encoding with 256 glyphs
    - \setkeys{Gin}{width=0.5\textwidth, keepaspectratio}   # Default image width and aspec ratio
    - \usepackage{setspace}                                 # Load setspace package
    - \setstretch{1.0}                                      # Set line spacing to 1.0 (single line spacing)
...


!include demo/introduction.md

!include demo/text.md

!include demo/ref_biblio.md

!include demo/tables.md

!include demo/images.md

!include demo/code.md

!include demo/equations.md

# Bibliography