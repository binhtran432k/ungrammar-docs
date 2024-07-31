#import "/book/components/glossary.typ": gls

== Ungrammar

This section explores the suitability of Ungrammar, a language for defining grammars, for implementing a #gls("lsp") for a specific language. Lezer (@sec-lezer), a parser generator, will be used in conjunction with Ungrammar to achieve efficient parsing and analysis.

=== Introduction

Ungrammar is a #gls("dsl") developed by the Rust Analyzer team to define the syntax structure of the Rust programming language. It serves as a declarative way to specify the grammar rules without delving into the complexities of parser implementation @bib-ungrammar.

Key Role of Ungrammar in Rust Analyzer:

- *Grammar Specification*: Ungrammar is used to precisely define the #gls("cst") of Rust code. This includes tokens, keywords, operators, and the hierarchical structure of the language.
- *Parser Generation*: While Ungrammar itself doesn't generate a parser, it provides a blueprint for constructing a parser. Tools like Lezer can utilize Ungrammar grammars to create efficient parsers.
- *Syntax Tree Construction*: The generated parser, often in conjunction with Lezer, constructs a #gls("cst") based on the Ungrammar grammar. This #gls("cst") is the foundation for subsequent language analysis tasks.
- *Language Server Integration*: The #gls("cst"), along with additional semantic information, is used to power #gls("lsp") features like syntax highlighting, code completion, and error checking.

Benefits of Using Ungrammar:

- *Readability*: Ungrammar's syntax is designed for human readability, making it easier to understand and maintain grammar definitions.
- *Maintainability*: By separating grammar specification from parser implementation, changes to the language syntax can be made more easily.
- *Efficiency*: The focus on defining the #gls("cst") structure allows for optimized parser generation and efficient syntax analysis.

By adopting Ungrammar, Rust Analyzer has established a solid foundation for parsing and analyzing Rust code, contributing to the overall performance and accuracy of the language server.

=== LSP Integration with Ungrammar and Lezer

While Ungrammar excels at defining grammars, directly using its output for full #gls("lsp") features like semantic analysis might have limitations. Lezer, with its efficient parsing capabilities, can be a valuable tool in conjunction with Ungrammar. Here's how they can work together:

+ *Grammar Definition in Ungrammar*: The language's syntax is defined using Ungrammar, leveraging its conciseness and expressiveness.
+ *Parser Generation with Lezer*: Lezer processes the Ungrammar grammar to generate a parser specifically tailored for the target language.
+ *Syntax Analysis with Lezer*: Lezer parses the code, generating a #gls("nast", mode: "full") that captures the syntactic structure.
+ *Potential Challenges*:
  - _NAST Limitations_: As mentioned previously, #gls("nast") might not be sufficient for advanced semantic analysis required by #gls("lsp"). Additional processing or extensions to the #gls("nast") might be necessary.
  - _Custom Tokenization_: Depending on the language's complexity, Lezer's #gls("lr") parsing approach might require custom tokenization logic for accurate parsing.

This approach leverages the strengths of both Ungrammar and Lezer:
- Ungrammar provides a clear and expressive way to define the language's grammar.
- Lezer offers efficient parsing and a solid foundation for syntax analysis.

By combining these tools, we can establish a robust foundation for building an #gls("lsp") server for our target language.

=== Future Research and Exploration

While Ungrammar and Lezer present a promising solution, further exploration is necessary:

- *Strategies for overcoming NAST limitations*: Investigate techniques for enriching the #gls("nast") or integrating semantic analysis tools to address #gls("lsp") requirements.
- *Evaluation of Ungrammar for complex languages*: Analyze the suitability of Ungrammar for defining grammars of languages with intricate syntax or semantics.
- *Community resources*: Explore existing projects using Ungrammar and Lezer in conjunction with #gls("lsp") to learn from best practices and potential pitfalls.

By conducting further research and leveraging the existing developer community, we can effectively utilize Ungrammar and Lezer to build a comprehensive #gls("lsp") server for our target language.