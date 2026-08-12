//
// Hausarbeit
//

#import "../lib/tuc.typ": bigskip
#import "../lib/titlepage.typ": *

#tuc-titlepage[
  #tuc-org-unit[
    Technische Universität Chemnitz \
    Fakultät für Informatik \
    Professur Neurorobotik \
  ]

  #tuc-logo()

  #tuc-thesis-type[Hausarbeit]
  #v(bigskip)
  #tuc-course[Proseminar Neurorobotik]
  #v(bigskip)
  #tuc-term[Sommersemester 2026]
  #v(bigskip)

  #tuc-title-block[vorgelegt von][
    #tuc-title-table((
      ([Name:], [Paul K]),
      ([Matrikel-Nr.:], [xxxxxx]),
      ([Studiengang:], [Bachelor Angewandte Informatik]),
    ))
  ]

  #v(4fr)

  #tuc-title-table(
    (([Dozent: Prof. Dr. ...],),),
    style: it => strong(it),
  )

  #v(1fr)

  #tuc-place-date[Chemnitz, 08. August 2026]
]
