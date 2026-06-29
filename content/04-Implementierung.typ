#import "../meta.typ": note, fig-platzhalter-mittel, asm-listing, c-listing, acr-emph
#import "@preview/acrostiche:0.7.0": acr, acrpl

= Implementierung

Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.

== Beispiel C-Listing

Das C-Listing mit Syntaxhervorhebung und Zeilennummern:

#figure(
  c-listing(
    "1\n2\n3",
    "int add(int a, int b) {\n  return a + b;\n}",
  ),
  caption: [Beispielhaftes C-Listing],
) <lst:c-beispiel>

== Beispiel Assembler-Listing

#figure(
  asm-listing(
    "1\n2",
    "push {r0, lr}\npop  {r0, pc}",
  ),
  caption: [Beispielhaftes ARM-Assembler-Listing],
) <lst:asm-beispiel>

At vero eos et accusam et justo duo dolores et ea rebum, vgl. @lst:c-beispiel und @lst:asm-beispiel.
