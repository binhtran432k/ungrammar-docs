#import "glossary.typ": update_glossaries, print_glossary
#import "utils.typ": getHeader
#import "cover.typ" as cover

#let project(
  title: "",
  author: "",
  subject: "",
  doc_type: "thesis",
  city: "Ho Chi Minh",
  cover_head: "",
  department: "",
  major: "",
  year: "2023",
  logo: none,
  declaration: "",
  acknowledgments: "",
  glossaries: (abbreviation: (:)),
  supervisors: (:),
  students: (:),
  reviewer: "",
  committee: "",
  secretary: "",
  body,
) = {
  set page(
    paper: "a4",
    margin: (
      top: 3cm,
      right: 2cm,
      bottom: 2cm,
      left: 3cm,
    ),
  )

  // Set the document's basic properties.
  set document(author: author, title: title)
  set text(
    size: 12pt,
    // font: "Times_New_Roman",
    font: "New Computer Modern",
    stretch: 120%,
    lang: "en"
  )
  show math.equation: set text(weight: 400)
  // set math.equation(numbering: "(1.1)") // Currently not directly supported by typst
  set math.equation(numbering: "(1)")
  set heading(numbering: "1.1.1.a")
  set par(justify: true)

  show raw.where(block: true): blk => {
    set par(justify: false)
    set block(fill: gray.lighten(90%), width: 100%, inset: (x: 1em, y: 1em))
    blk
  }

  // show heading.where(level: 1): set text(size: 24pt)
  show heading.where(level: 2): set text(size: 18pt)
  show heading.where(level: 3): set text(size: 14pt)

  show outline.entry.where(level: 1): it => {
    v(16pt, weak: true)
    strong(it)
  }
  show outline.entry.where(level: 2): it => {
    it
  }
  show link: set text(fill: blue)
  show ref: it => {
    let eq = math.equation
    let hd = heading
    let el = it.element
    if el != none and el.func() == eq {
      // Override equation references.
      link(el.label)[#numbering(
          el.numbering,
          ..counter(eq).at(el.location()),
        )]
    } else if el != none and el.func() == hd {
      // Override equation references.
      text(fill: blue.darken(60%))[#it]
    } else {
      // Other references as usual.
      it
    }
  }
  show cite: set text(fill: green)

  // Cover
  cover.print_cover_head(cover_head, department)
  cover.print_logo(logo)
  v(0.25fr)
  cover.print_subject(subject)
  cover.print_title(title, major)
  v(1fr)
  cover.print_cover_details(supervisors, students, committee, secretary, reviewer)
  v(1fr)
  cover.print_footer(city)
  pagebreak(weak: true)

  set page(numbering: "i")
  counter(page).update(1)

  // Declaration and Acknowledgments
  [

    #set heading(numbering: none)
    #show heading: it => {
      it
      v(1.5em)
    }

    #if declaration != "" {
      declaration
      pagebreak(weak: true)
    }

    #if acknowledgments != "" {
      acknowledgments
      pagebreak(weak: true)
    }
  ]

  // Table of contents.
  [
    #show heading: it => {
      it
      v(1em)
    }
    #let locTitle = [Table of Contents]
    #outline(
      title: locTitle,
      depth: 3,
      indent: true,
    )
    #pagebreak()

    #let lofTitle = [List of Figures]
    #outline(
      title: lofTitle,
      depth: 3,
      target: figure.where(kind: image),
    )
    #{
      show heading: none
      heading(numbering: none)[#lofTitle]
    }
    #pagebreak()

    #let lotTitle = [List of Tables]
    #outline(
      title: lotTitle,
      depth: 3,
      target: figure.where(kind: table),
    )
    #{
      show heading: none
      heading(numbering: none)[#lotTitle]
    }
    #pagebreak()

    #update_glossaries(glossaries)

    #if glossaries.abbreviation.len() > 0 {
      heading(
        outlined: true,
        numbering: none,
        text("List of Abbreviations"),
      )
      print_glossary(glossaries, "abbreviation", bold: true)
      pagebreak()
    }
    #if glossaries.symbol.len() > 0 {
      heading(
        outlined: true,
        numbering: none,
        text("List of Symbols"),
      )
      print_glossary(glossaries, "symbol", bold: false)
    }
  ]


  // Main body.
  set page(numbering: "1", number-align: center)
  // set par(first-line-indent: 20pt)
  set page(header: getHeader())
  counter(page).update(1)

  show heading.where(level: 1): it => [
    // #pagebreak(weak: true)
    #set text(size: 24pt)
    #v(1.5in)
    #block[
      #if it.numbering != none [
        Chapter #counter(heading).display()
        #v(0.5cm)
      ]
      #par(first-line-indent: 0pt)[#it.body]
    ]
    #v(1.5cm, weak: true)
  ]
  show heading.where(level: 2): it => [
    #set text(size: 18pt)
    #v(1cm, weak: true)
    #block[
      #if it.numbering != none [
        #counter(heading).display()
      ]
      #it.body
    ]
    #v(1cm, weak: true)
  ]
  show heading.where(level: 2): set text(size: 18pt)
  show heading.where(level: 3): set text(size: 14pt)
  show heading.where(level: 4): set text(size: 12pt)

  body

  if glossaries.glossary.len() > 0 {
    pagebreak(weak: true)
    heading(
      outlined: true,
      numbering: none,
      text("Glossary"),
    )
    print_glossary(glossaries, "glossary")
  }
}

#let appendix(body) = {
  set heading(numbering: "A", supplement: [Appendix])
  counter(heading).update(0)
  outline(target: heading.where(supplement: [Appendix]), title: [Appendix])
  body
}
