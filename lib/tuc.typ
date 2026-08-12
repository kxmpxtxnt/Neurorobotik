//
// Grundeinstellungen des Dokuments. Nur ändern, wenn Sie wissen, was Sie tun.
//

// Schriftgrößen analog zu den LaTeX-Größenbefehlen bei 12pt Grundschrift.
#let sz = (
  footnotesize: 10pt,
  small: 10.95pt,
  normalsize: 12pt,
  large: 14.4pt,
  Large: 17.28pt,
  LARGE: 20.74pt,
  huge: 24.88pt,
)

// LaTeX-Leerräume
#let smallskip = 3pt
#let medskip = 6pt
#let bigskip = 12pt

#let tuc-doc(body) = {
  set page(
    paper: "a4",
    // Vorgabe: links 3 cm, rechts 2,5 cm, oben und unten 2,5 cm,
    // Kopf- und Fußzeile im Rand enthalten.
    margin: (left: 30mm, right: 25mm, top: 109.72pt, bottom: 100.77pt),
    numbering: "1",
    number-align: center + bottom,
  )

  // Times New Roman (Vorgabe: TNR 12pt) mit passender Mathe-Schrift
  set text(
    font: ("Nimbus Roman", "Liberation Serif"),
    size: sz.normalsize,
    lang: "de",
    region: "DE",
    hyphenate: true,
  )
  show math.equation: set text(font: "New Computer Modern Math")

  // Kein Absatzeinzug, 1,5-zeiliger Satz
  set par(
    leading: 9.99pt,
    spacing: 17.21pt,
    first-line-indent: 0pt,
    justify: true,
  )

  // Numerierte Überschriften wie in article
  set heading(numbering: "1.1")
  show heading: set text(weight: "bold")
  show heading.where(level: 1): it => block(above: 18pt, below: 12pt, text(size: sz.Large, it))
  show heading.where(level: 2): it => block(above: 16pt, below: 10pt, text(size: sz.large, it))
  show heading.where(level: 3): it => block(above: 14pt, below: 9pt, text(size: sz.normalsize, it))

  // Inhaltsverzeichnis ohne Füllpunkte auf oberster Ebene
  show outline.entry.where(level: 1): set outline.entry(fill: none)

  body
}

// Einfache, zentrierte Überschrift für Zusammenfassung, Erklärung usw.
#let tuc-simple-section(title, gap: bigskip) = {
  align(center, text(size: sz.Large, weight: "bold", title))
  v(gap)
}

// Anmerkung am Rand. Nur für den Entwurf.
#let todo(body) = {
  place(
    right,
    dx: 100% + 3mm,
    box(
      width: 22mm,
      fill: rgb("#fff2b2"),
      stroke: 0.4pt + rgb("#c9a227"),
      inset: 3pt,
      text(size: 8pt, hyphenate: false, body),
    ),
  )
}
