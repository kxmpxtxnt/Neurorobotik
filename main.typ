#import "lib/tuc.typ": tuc-doc

#show: tuc-doc

#include "content/deckblatt.typ"

#[
  #set page(numbering: none)
  #outline(title: [Inhaltsverzeichnis], depth: 3)
  #pagebreak(weak: true)
]

= Einleitung
#include "content/einleitung.typ"

= Grundlagen
#include "content/grundlagen.typ"

= Elektroden
#include "content/elektroden.typ"

= Chirurgische Techniken
#include "content/chirurgie.typ"

= Steuerung und klinische Hürden
#include "content/steuerung.typ"

= Diskussion
#include "content/diskussion.typ"

= Zusammenfassung und Ausblick
#include "content/fazit.typ"

#pagebreak()

#bibliography("/sources.bib", title: [Literaturverzeichnis], style: "ieee")
