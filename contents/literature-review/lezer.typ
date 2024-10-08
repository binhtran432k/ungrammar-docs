#import "/components/glossary.typ": gls

== The Lezer Parser System
<sec-lezer>

Manually crafting a robust parser for a programming language is a complex and time-consuming endeavor. To efficiently construct a parser capable of providing syntax analysis for any language, while also supporting #gls("lsp") integration, several key requirements must be met @bib-php-parser:

- *Error Tolerance*: The parser should gracefully handle incomplete or invalid code, producing a partial parse tree and relevant diagnostics.
- *Performance*: To ensure responsiveness, the parser must be able to parse several megabytes of source code per second, leaving ample room for other language server operations. The parser should exhibit low latency, allowing for real-time feedback and responsiveness.
- *Memory Efficiency*: Optimized data structures are essential for handling large codebases without excessive memory consumption.
- *Incremental Parsing*: The ability to update the parse tree incrementally based on code changes is crucial for providing real-time feedback.
- *Rich AST*: The generated #gls("ast") should accurately represent the source code, including whitespace and comments, to facilitate semantic and transformational operations.
- *Testability*: A well-defined test suite is essential to ensure parser correctness and reliability.
- *Maintainability*: The parser's codebase should be clear, well-structured, and easy to understand and modify.
- *Extensibility*: The parser should provide a flexible #gls("api") for integration with other tools and components.

To expedite the parser development process while meeting these stringent requirements, we have chosen to leverage a parser generator, specifically Lezer. The following subsections will delve into the details of Lezer and its suitability for our project.

=== Overview

The challenge of parsing structured text has persisted for decades, with various solutions offering varying degrees of efficiency, flexibility, and ease of use. Lezer, a JavaScript-based parser generator, represents a contemporary approach to this problem.

Unlike traditional parser generators, Lezer produces compact parse tables that can be efficiently loaded and executed in the browser. This design choice prioritizes performance and memory efficiency, making it well-suited for web-based applications.

Lezer's core functionality revolves around generating parsers from grammar specifications. These grammars define the syntax rules of a language, and the generator produces the necessary code to parse text according to those rules. The resulting parser constructs a #gls("nast"), which represents the structure of the parsed text. This #gls("nast") can then be used for various language-aware operations, including syntax highlighting, code folding, and code completion @bib-lezer.

By focusing on performance, flexibility, and ease of use, Lezer offers a compelling solution for developers building language-aware applications.

=== Core Features

==== Grammar-Driven Parsing

Lezer adopts a grammar-driven approach, allowing developers to define language syntax declaratively. This high-level specification is then transformed into an efficient parser through the use of a parser generator. This approach promotes code readability, maintainability, and the ability to rapidly iterate on language definitions.

==== Incremental Parsing

Lezer is optimized for incremental parsing, enabling efficient updates to the parse tree when the underlying text is modified. By reusing existing parse tree nodes, Lezer minimizes the computational overhead associated with re-parsing entire documents. This feature is essential for providing real-time feedback to users as they edit code.

==== Error Tolerance

Lezer is designed to handle syntax errors gracefully. Rather than halting parsing upon encountering an error, it attempts to recover and produce a partial parse tree. This error-tolerant approach ensures that users can continue editing their code even in the presence of syntax mistakes.

==== Fast

By leveraging the #gls("lr", mode: "short") parsing algorithm, an efficient tokenizer, and carefully optimized data structures, Lezer achieves exceptional parsing speed. This enables real-time feedback and responsiveness, crucial for a seamless user experience.

==== Lightweight

Lezer's parser generator produces compact parse tables that are optimized for efficient execution. These parse tables, combined with a relatively small runtime library, can be easily included in web applications or other software distributions without incurring significant overhead. This lightweight nature is crucial for applications with limited resources, such as mobile devices or embedded systems.

By minimizing the size of the shipped code, Lezer helps to reduce load times and improve overall application performance.

==== Memory-Friendly

Lezer places a strong emphasis on memory efficiency by employing a compact syntax tree representation. To minimize memory footprint, the parser packs groups of related nodes together into 64-bit units. This approach allows for efficient storage and retrieval of syntactic information.

By adopting this memory-efficient design, Lezer enables the parsing of large codebases without compromising performance. This is particularly important for web-based applications where memory resources can be constrained.

=== Challenges of Using Lezer for LSP Integration

While Lezer offers a robust foundation for parsing and syntax highlighting, integrating it into a full-fledged #gls("lsp") implementation presents specific challenges.

==== NAST Limitations for Semantic Analysis

Lezer's #gls("nast", mode: "long") is optimized for efficient parsing and syntax highlighting. However, it may not be sufficiently expressive to support complex semantic analysis tasks required by #gls("lsp"). Features like "go to definition" or "find references" often demand a deeper understanding of the code's structure and meaning than what a #gls("nast") can provide.

==== Focus on Syntax Highlighting

Lezer's core strength lies in its ability to rapidly parse and highlight code syntax. While this is crucial for basic code editing, advanced language features like semantic analysis, type checking, and code refactoring necessitate additional tooling or extensions to the #gls("nast").

==== Parser Customization

Lezer's #gls("lr") parsing approach might require custom tokenization logic for certain languages. This can introduce complexity and increase development effort. Additionally, handling language-specific grammar nuances might necessitate modifications to the Lezer grammar specification.
