//
// Formatvorlage für die Selbstständigkeitserklärung (nicht zum Bearbeiten gedacht).
//

#import "tuc.typ": sz, tuc-simple-section

#let tuc-declaration(body, title: [Selbstständigkeitserklärung]) = {
  set page(numbering: none)
  tuc-simple-section(title)
  body
}

// Unterschriftenzeile
#let tuc-signature(name, width: 5cm) = align(right, block(width: width, text(size: sz.footnotesize)[
  #v(31pt)
  #box(width: 100%, repeat[.])
  #linebreak()
  #h(1em)#name
]))
