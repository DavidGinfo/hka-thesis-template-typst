// Academic table (booktabs-style, full text width, no justification in cells)
#let tab-h(body) = table.cell(
  fill: luma(248),
  inset: (x: 6pt, y: 5pt),
)[
  #block(width: 100%, breakable: true)[
    #set par(justify: false, leading: 0.55em)
    #text(weight: "bold", size: 10pt)[#body]
  ]
]

#let tab-d(body) = table.cell(
  inset: (x: 6pt, y: 4pt),
)[
  #block(width: 100%, breakable: true)[
    #set par(justify: false, leading: 0.6em)
    #body
  ]
]

// Reference to a requirement or constraint. Jumps to the corresponding
// table row (FR/C) or entry (NFR). The visible text
// matches the identifier, e.g. #req("FR-1").
#let req(id) = link(label(lower(id)))[#id]
