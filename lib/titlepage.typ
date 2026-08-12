//
// Formatvorlage für das Deckblatt (nicht zum Bearbeiten gedacht).
//

#import "tuc.typ": medskip, sz

// Deckblatt: alles zentriert, ohne Seitenzahl.
#let tuc-titlepage(body) = {
  set page(numbering: none)
  set align(center)
  set par(justify: false)
  body
  pagebreak(weak: true)
  counter(page).update(1)
}

// Professur, Institut, ...
#let tuc-org-unit(body) = block(body)

// Logo
#let tuc-logo(width: 60%, path: "/figures/tuc_green_margin.pdf") = block(
  image(path, width: width),
)

// Block mit kleiner Überschrift.
#let tuc-title-block(head, body, gap: medskip) = block[
  #v(gap)
  #head
  #v(gap)
  #body
]

// Art der Arbeit
#let tuc-thesis-type(body) = block(text(size: sz.huge, weight: "bold", body))

// Angestrebter Abschluss
#let tuc-degree(body, gap: medskip) = tuc-title-block(
  [zur Erlangung des akademischen Grades],
  text(size: sz.LARGE, body),
  gap: gap,
)

// Autor
#let tuc-author(body, gap: medskip) = tuc-title-block(
  [vorgelegt von],
  text(size: sz.Large, body),
  gap: gap,
)

// Lehrveranstaltung
#let tuc-course(body, gap: medskip) = tuc-title-block(
  [zur Lehrveranstaltung],
  text(size: sz.LARGE, body),
  gap: gap,
)

// Semester
#let tuc-term(body, gap: medskip) = tuc-title-block(
  [im],
  text(size: sz.Large, body),
  gap: gap,
)

// Thema der Arbeit
#let tuc-topic(body) = block(above: medskip, below: medskip, text(size: sz.LARGE, body))

//
// Deckblatttabelle ohne Einzug.
//
// rows  -> Liste von Zeilen, jede Zeile eine Liste von Zellen
// style -> Formatierung der linken Spalte
//
#let tuc-title-table(rows, style: it => it) = block(grid(
  columns: rows.at(0).len(),
  column-gutter: 12pt,
  row-gutter: 0.5em,
  ..rows
    .map(row => row.enumerate().map(((i, cell)) => if i == 0 {
      align(right, style(cell))
    } else {
      align(left, cell)
    }))
    .flatten()
))

//
// Deckblatttabelle mit Einzug.
//
// width -> Breite der linken Spalte
//
#let tuc-title-table-indent(rows, width: 3cm, style: it => it) = block(
  width: 100%,
  align(left, grid(
    columns: (width,) + (auto,) * (rows.at(0).len() - 1),
    column-gutter: 12pt,
    row-gutter: 0.5em,
    ..rows
      .map(row => row.enumerate().map(((i, cell)) => if i == 0 {
        align(right, style(cell))
      } else {
        align(left, cell)
      }))
      .flatten(),
  )),
)

// Datum, Ort
#let tuc-place-date(body) = block(above: medskip, body)
