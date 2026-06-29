#import "../meta.typ": note, fig-platzhalter-gross, fig-platzhalter-mittel, fig-platzhalter-klein, acr-emph, acrpl-emph, acr-cap
#import "@preview/acrostiche:0.7.0": acr, acrpl

= Einleitung

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum @beispielBuch2025. Hier wird das Thema eingeführt und in einen größeren Kontext gestellt.

#note[Anmerkungen erscheinen nur, solange `isDraft` in `config.toml` aktiv ist.]

#fig-platzhalter-gross(
  caption: [Großer Grafik-Platzhalter (100 %)],
  label: <fig:gross>,
)[Hier soll später eine Abbildung stehen, vgl. @fig:gross.]

== Motivation

Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet @beispielArtikel2024. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore.

#fig-platzhalter-mittel(
  caption: [Mittlerer Grafik-Platzhalter (80 %)],
  label: <fig:mittel>,
)[Beispiel für einen mittelgroßen Platzhalter, vgl. @fig:mittel.]

== Problemstellung

Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Ein Akronym als Beispiel: #acr-emph("CAN").

#fig-platzhalter-klein(
  caption: [Kleiner Grafik-Platzhalter (50 %)],
  label: <fig:klein>,
)[Beispiel für einen kleinen Platzhalter, vgl. @fig:klein.]

== Zielsetzung

At vero eos et accusam et justo duo dolores et ea rebum. Beschreiben Sie hier das Ziel und den Aufbau der Arbeit.
