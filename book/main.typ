#import "components/glossary.typ": print_glossary, gls
#import "components/format.typ": project
#import "glossaries.typ": GLOSSARIES

#let m = yaml("metadata.yml")

#show: project.with(
  logo: image("components/logo.svg", width: 26%),
  doc_type: m.doc_type,
  department: m.department,
  cover_head: m.cover_head,
  major: m.major,
  subject: m.subject,
  lecturers: m.lecturers,
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

#bibliography("references.bib")