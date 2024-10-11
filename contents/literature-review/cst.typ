#import "/components/glossary.typ": gls

== Concrete Syntax Tree (CST) <sec-cst>

#gls("cst", mode: "full") play a critical role in the parsing and syntax
analysis of programming languages. Unlike Abstract Syntax Trees (AST)
(@sec-ast), which abstract away syntactic details like parentheses, comments,
and other redundant information, CSTs preserve the full structure of the source
code, including all syntactic elements defined by the grammar of the language.

#gls("cst")s are essential for tools that require a detailed, faithful
representation of source code syntax. They enable fine-grained control in
environments like code editors, syntax-directed editors, and real-time
collaborative development. As tools like Tree-sitter and Lezer (@sec-lezer)
continue to evolve, CSTs will likely become even more integral to modern
software development workflows.

=== Theoretical Foundations of CSTs

The concept of a #gls("cst") originates from formal language theory and
compiler construction. CSTs are direct representations of the syntax of a
program as described by a context-free grammar. In contrast to ASTs, CSTs map
closely to the grammatical structure of the source code and include every
token, ensuring a more detailed and faithful representation.

The distinction between CST and AST is discussed in Aho et al.'s Compilers:
Principles, Techniques, and Tools (2006), commonly known as The Dragon Book
@bib-art-cp. Aho et al. explain that CSTs are typically generated during the
parsing phase of compilation, while ASTs are often created afterward to
simplify semantic analysis and optimization. CSTs capture more information than
ASTs and are useful for tasks such as syntax highlighting, code folding, and
structural editing in #gls("ides").

=== Practical Implementations of CSTs

Several modern parsing tools and libraries emphasize the use of CSTs for
different purposes:

- Tree-sitter: Developed by GitHub, Tree-sitter is a popular parser generator
  tool designed for fast parsing of source code to produce CSTs. It is used in
  various applications such as syntax highlighting, code navigation, and
  real-time code analysis in IDEs. Tree-sitter generates CSTs that represent
  the entire syntax of a program, including elements like comments and
  punctuation, making it an ideal choice for syntax-directed editors and
  linters. The explicit representation of every syntax element makes it
  possible to manipulate and transform the code while preserving its structure
  @bib-treesitter.

- Lezer (@sec-lezer): Lezer is another incremental parsing library designed for
  real-time parsing of code in browser environments, such as within code
  editors. Like Tree-sitter, Lezer constructs CSTs that map directly to the
  source code grammar. Its design is optimized for compactness, avoiding
  redundant information and making it efficient for lightweight environments.
  Lezer’s CST representation is ideal for providing fine-grained control over
  code formatting and refactoring in IDEs or browser-based editors @bib-lezer.

Both Tree-sitter and Lezer produce CSTs because they are optimized for
environments where accurate, fine-grained syntax control is necessary, such as
in code editors or IDEs. Their goal is to represent the source code as
faithfully as possible, capturing all details for accurate rendering and
manipulation.

=== CSTs in Modern Development

CSTs are becoming increasingly important in the modern development ecosystem,
particularly with the rise of powerful code editors and IDEs. The preservation
of full syntactic details enables advanced features such as:

- *Syntax Highlighting and Code Folding*: Tools like Visual Studio Code and
  GitHub's Atom editor rely on CSTs to offer responsive syntax highlighting and
  code folding. These features are essential for user experience, enabling
  developers to navigate and understand large codebases more efficiently.

- *Refactoring and Code Manipulation*: Refactoring tools and code formatters can
  leverage CSTs to make safe, structural changes to code while preserving its
  formatting and comments. This is a core advantage of using CSTs over ASTs, as
  ASTs often discard syntactic elements, making it more challenging to maintain
  the original code structure.

- *Incremental Parsing for Real-time Feedback*: Tools like Tree-sitter and Lezer
  are optimized for real-time parsing, providing immediate feedback during code
  editing. This feature is essential for modern IDEs, which require rapid
  updates to the code’s representation as developers type, without re-parsing
  the entire document.

=== Challenges and Future Directions

Despite their advantages, CSTs can introduce complexity in situations where the
full syntactic structure is not necessary. For example, during the semantic
analysis phase of compilation, the extra syntactic details captured in a CST
may be redundant, and thus many compilers convert CSTs to ASTs at this stage to
streamline optimization and code generation.

Looking ahead, CSTs are expected to play an increasingly significant role in
areas like real-time collaborative development, where the ability to capture
every syntactic detail is crucial for synchronizing changes across different
users.
