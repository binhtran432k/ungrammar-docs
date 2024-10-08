#let print_cover_head(head, department) = {
  set align(center)
  [
    #show: upper
    #set par(leading: 1.2em)

    #head
    *#department*
  ]
  "____________ * ____________"
}

#let print_logo(logo) = {
  if logo != none {
    v(0.25fr)
    align(center, logo)
    v(0.50fr)
  } else {
    v(0.75fr)
  }
}

#let print_subject(subject) = {
  set align(center)
  set text(size: 15pt)
  upper[#subject]
}

#let print_title(title, major) = {
  set align(center)
  block(width: 100%, inset: (y: 2em), stroke: (y: 1pt))[
    #set par(leading: 1em)
    #show: upper

    #text(weight: "bold", size: 18pt)[#title]

    #upper(text(size: 14pt)[Major: #major])
  ]
}

#let print_cover_details(lecturers, students, committee, secretary, reviewer) = {
  grid(
    columns: (1fr, 1fr),
    rows: (1.4em, 1.4em, 1.4em, 2em, auto),
    column-gutter: .5cm,
    align(right, [_Thesis Committee_:]), align(left, committee),
    align(right, [_Supervisor(s)_:]),
    align(left, for lecturer in lecturers [#lecturer]),
    align(right, [_Member Secretary_:]), align(left, secretary),
    align(right, [_Reviewer_:]), align(left, reviewer),

    align(right, [_Students_:]),
    align(
      left,
      for student in students [
        #v(1em, weak: true)
        #student.at("id") - #student.at("name")
      ],
    ),
  )
}

#let print_footer(city) = {
  set align(center)
  [#city, #datetime.today().display("[month]/[year]")]
}
