#import "/components/glossary.typ": gls

== Abstract Syntax Tree (AST) <sec-ast>

#gls("ast", mode: "full") are a fundamental data structure used in the fields
of programming languages, compilers, and interpreters to represent the
syntactic structure of source code. An #gls("ast") simplifies code analysis by
abstracting away unnecessary details, such as specific syntax (punctuation or
parentheses), while preserving the essential structure that reflects the
hierarchical organization of the code.

The AST remains a cornerstone in the field of programming language theory and
tool development. As programming languages evolve and become more dynamic,
AST-based parsing, analysis, and transformation techniques will continue to
play a critical role in making languages more robust and tools more efficient.

=== Historical Background

#gls("ast", mode: "short")s have been integral to the development of compilers
since the early days of computer science. Early compiler design, like in the
`FORTRAN` and `ALGOL` languages, involved creating data structures that
represented program structure, leading to the first iterations of tree-based
code representations. Donald Knuth's work on Context-Free Grammars in the 1960s
laid the foundation for systematic code parsing techniques, from which ASTs
naturally evolved as a means of efficiently representing parsed code
@bib-art-cp.

=== AST in Compiler Design

#gls("ast", mode: "short")s play a key role in compiler front-ends, which
consist of the lexical analysis, parsing, and semantic analysis phases. After
the lexical analyzer tokenizes the source code, the parser generates an AST
based on the syntactic rules of the language. The tree structure allows
compilers to handle complex program logic by recursively breaking down
statements, expressions, and declarations into manageable components.

Early texts like "The Dragon Book" @bib-compilers emphasized the use of
ASTs for efficiently representing language constructs. Unlike parse trees,
which capture all details of a grammar's production rules, ASTs are more
abstract. They omit unnecessary symbols and reduce the tree to semantically
meaningful nodes, making ASTs more efficient for transformations and code
generation.

=== Recent Innovations and Tools

With the increasing complexity of modern programming languages, #gls("ast")
manipulation has become essential for various tools beyond compilers, including
linters, code analyzers, and IDEs. Tools such as LLVM's Clang, Roslyn (for
C\#), and GraalVM leverage ASTs for optimization, code refactoring, and runtime
analysis.

=== Use of AST in Static Analysis and Linters

#gls("ast", mode: "short")s are central to static analysis tools like ESLint,
Prettier, and Clippy (for Rust). These tools traverse ASTs to identify
stylistic or logical errors in the code, apply transformations, or suggest
optimizations without executing the program. ASTs offer a flexible and
language-agnostic way to analyze source code, enabling linting across multiple
languages by parsing the code into a common tree structure.
