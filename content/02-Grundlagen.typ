#import "../meta.typ": note, fig-platzhalter-mittel, tab-h, tab-d, acr-emph, acrpl-emph
#import "@preview/acrostiche:0.7.0": acr, acrpl

= Grundlagen

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Dieses Kapitel legt die für das Verständnis notwendigen Grundlagen.

== Begriffe und Konzepte

At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.

#figure(
  table(
    columns: (1fr, 2fr),
    tab-h[Begriff], tab-h[Beschreibung],
    tab-d[Beispiel A], tab-d[Lorem ipsum dolor sit amet],
    tab-d[Beispiel B], tab-d[Consetetur sadipscing elitr],
  ),
  caption: [Beispielhafte Tabelle],
) <tab:beispiel>

== Verwandte Verfahren

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat. Querverweis auf @tab:beispiel.
