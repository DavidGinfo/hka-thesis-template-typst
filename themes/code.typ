// Code listings with syntax highlighting. The Sublime syntax and tmTheme files
// are located in this folder; paths are relative to themes/.

// ARM assembly listing with line numbers and custom syntax highlighting.
#let asm-code(code) = raw(
  code,
  lang: "armasm",
  block: true,
  syntaxes: "armasm.sublime-syntax",
  theme: "armasm.tmTheme",
)

#let listing-numbers(numbers) = block(
  inset: (
    top: 6pt,
    bottom: 6pt,
    left: 0pt,
    right: 0pt,
  ),
)[
  #text(
    fill: rgb("#6A737D"),
  )[
    #raw(
      numbers,
      block: true,
    )
  ]
]

#let asm-listing(numbers, code, width: 70%) = align(center)[
  #grid(
    columns: (1.6em, width),
    column-gutter: 0.8em,
    align: (right + top, left + top),

    listing-numbers(numbers),

    block(
      width: 100%,
      fill: rgb("#F8F9FB"),
      stroke: rgb("#D0D7DE"),
      radius: 4pt,
      inset: (
        top: 6pt,
        bottom: 6pt,
        left: 8pt,
        right: 8pt,
      ),
      breakable: true,
    )[
      #asm-code(code)
    ],
  )
]

// C listing with line numbers and custom syntax highlighting.
#let c-code(code) = raw(
  code,
  lang: "cthesis",
  block: true,
  syntaxes: "c-thesis.sublime-syntax",
  theme: "c-thesis.tmTheme",
)

#let c-listing-numbers(numbers) = block(
  inset: (
    top: 6pt,
    bottom: 6pt,
    left: 0pt,
    right: 0pt,
  ),
)[
  #text(
    fill: rgb("#6A737D"),
  )[
    #raw(
      numbers,
      block: true,
    )
  ]
]

#let c-listing(numbers, code, width: 70%) = align(center)[
  #grid(
    columns: (1.6em, width),
    column-gutter: 0.8em,
    align: (right + top, left + top),

    c-listing-numbers(numbers),

    block(
      width: 100%,
      fill: rgb("#F8F9FB"),
      stroke: rgb("#D0D7DE"),
      radius: 4pt,
      inset: (
        top: 6pt,
        bottom: 6pt,
        left: 8pt,
        right: 8pt,
      ),
      breakable: true,
    )[
      #c-code(code)
    ],
  )
]
