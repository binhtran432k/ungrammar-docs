#import "/components/glossary.typ": gls

=== Ungrammar Lezer <subsec-impl-lezer>

The Ungrammar Lezer Parser serves as the fundamental component responsible for
analyzing and understanding Ungrammar code. Leveraging the powerful Lezer
(@sec-lezer) parser generator and runtime, this essential tool transforms raw
Ungrammar text into a well-structured #gls("cst", mode:"full").

==== Why Lezer?

When developing an LSP ecosystem that requires frequent code analysis during
editing, a high-performance parser is essential. Lezer, with its reputation for
efficiency and robustness, was the ideal choice for our project.

Key Reasons for Choosing Lezer:

- *Performance*: Lezer's efficient parsing capabilities are crucial for
  handling the frequent analysis required in an LSP environment.
- *Error Tolerance*: Lezer's built-in error tolerance allows us to estimate the
  number of errors in the code without halting the analysis process, enabling
  focused error correction.
- *Incremental Parsing*: Lezer's incremental parsing capabilities minimize the
  overhead of re-parsing large portions of code when changes are made,
  improving responsiveness.
- *CodeMirror Integration*: Lezer's integration with CodeMirror, a widely used
  code editor, simplifies the development process and ensures compatibility
  with a popular editor choice.

By selecting Lezer as our parser, we have laid a strong foundation for the
Ungrammar LSP ecosystem, ensuring efficient performance, robust error handling,
and seamless integration with code editors.

==== Creating the Ungrammar Lezer Parser

To establish a robust foundation for our #gls("lsp") ecosystem, we developed a
powerful Lezer-based parser specifically tailored for the Ungrammar language.
This parser, generated using the Lezer parser generator, plays a critical role
in analyzing Ungrammar code and constructing its syntax tree.

#[
  #show figure: set block(breakable: true)
  #set raw(block: true)
  #figure(
    raw(read("/assets/ungrammar.grammar")),
    caption: [Lezer code to generate the Ungrammar Parser],
  ) <fig-grammar>
]

#[
  #show figure: set block(breakable: true, clip: true)
  #set raw(block: true)
  #figure(
    raw(read("/assets/parser.js"), lang: "js"),
    caption: [Generated Parser from @fig-grammar],
  )
]

==== Deployment to NPM

Upon completion of development, we successfully deployed the Ungrammar Lezer
parser to the NPM registry. This strategic move allows other developers to
easily discover, integrate, and extend our project for their own
language-related endeavors. By making the parser readily available on NPM,
we've expanded the accessibility and potential impact of our work within the
developer community.

Here is our deployed Ungrammar Lezer parser, which has been downloaded by 198
users since its public release and is currently hosted at
#link("https://www.npmjs.com/package/ungrammar-lezer").

#figure(
  image("/assets/lezer.jpg", width: 90%),
  caption: [Deployed Ungrammar Lezer on NPM],
)
