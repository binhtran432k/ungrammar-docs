#import "components/glossary.typ": print_glossary, gls
#import "components/format.typ": project, appendix
#import "glossaries.typ": GLOSSARIES

#set raw(syntaxes: "/gherkin.sublime-syntax")

#let m = yaml("metadata.yml")

#show: project.with(
  logo: image("components/logo.svg", width: 26%),
  doc_type: m.doc_type,
  department: m.department,
  cover_head: m.cover_head,
  major: m.major,
  subject: m.subject,
  supervisors: m.supervisors,
  committee: m.committee,
  secretary: m.secretary,
  reviewer: m.reviewer,
  title: m.title,
  author: m.students.map(student => student.at("name")),
  students: m.students,
  declaration: include "contents/declaration.typ",
  acknowledgments: include "contents/acknowledgments.typ",
  glossaries: GLOSSARIES,
)

#include "contents/introduction.typ"
#pagebreak(weak: true)
#include "contents/literature-review/index.typ"
#pagebreak(weak: true)
#include "contents/requirements-analysis/index.typ"
#pagebreak(weak: true)
#include "contents/system-design/index.typ"
#pagebreak(weak: true)
#include "contents/system-implementation/index.typ"
#pagebreak(weak: true)
#include "contents/evaluation/index.typ"
#pagebreak(weak: true)
#include "contents/conclusions/index.typ"
#pagebreak(weak: true)

#show: appendix

#include "contents/appendix/documentation.typ"
#pagebreak(weak: true)

#bibliography("references.bib")
