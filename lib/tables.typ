// Akademische Tabelle (booktabs-ähnlich, volle Textbreite, kein Blocksatz in Zellen)
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

// Verweis auf eine Anforderung oder Randbedingung. Springt zur zugehörigen
// Tabellenzeile (FR/C) beziehungsweise zum Eintrag (NFR). Der sichtbare Text
// entspricht der Kennung, zum Beispiel #req("FR-1").
#let req(id) = link(label(lower(id)))[#id]
