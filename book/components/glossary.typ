#let GLS_PREFIX = "gls-auto-"

#let GLOSSARIES = state("glossaries", (:))
#let PRINTED_GLOSSARIES = state("printed_glossaries", ())

#let update_glossaries(glossaries) = {
  GLOSSARIES.update(glossaries)
}

#let print_glossary(glossaries, name, bold: true) = {
  let to_print = ()
  for (key, value) in glossaries.at(name).pairs() {
    // let (abbr, full) = value
    let abbr = value.at(0)
    let full = value.at(1)
    to_print.push([#if bold [*#abbr*] else [#abbr] #label(GLS_PREFIX + key)])
    to_print.push(full)
  }
  grid(
    columns: 2,
    gutter: 3mm,
    ..to_print
  )
}

#let gls(name) = {
  let contents = locate(loc => {
    let glossaries = GLOSSARIES.at(loc)
    for table in glossaries.values() {
      if name in table.keys() {
        if table.at(name).len() > 2 {
          link(label(GLS_PREFIX + name))[#table.at(name).at(2)]
        } else if name not in PRINTED_GLOSSARIES.at(loc) {
          link(label(GLS_PREFIX + name))[#table.at(name).at(1) (#table.at(name).at(0))]
        } else {
          link(label(GLS_PREFIX + name))[#table.at(name).at(0)]
        }
        break
      }
    }
  }
  )
  contents
  PRINTED_GLOSSARIES.update(curr => {
    if name not in curr {
      curr.push(name)
    }
    curr
  })
  // [#glossaries]
}