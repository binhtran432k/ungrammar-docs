#import "../components/glossary.typ": gls

= Introduction

== Reasons and Motivations for Conducting Research

The rapid evolution of software development has placed increasing demands on
tools and technologies that can effectively support complex projects. While
#gls("ides") have made significant strides in
enhancing developer productivity, the challenges posed by diverse programming
languages and the growing scale of software systems have exposed limitations in
traditional development paradigms.

The #gls("lsp") emerged as a promising solution to address
these challenges by decoupling language-specific features from the editor
itself. This approach offers the potential to create more flexible, adaptable,
and efficient development environments. However, while the #gls("lsp") has gained
traction, its full potential, particularly in the context of emerging languages
like Ungrammar, remains largely untapped.

This research is motivated by the need to explore the #gls("lsp")'s capabilities in
addressing the evolving needs of modern software development. By investigating
the potential of the #gls("lsp") to support innovative language features and development
methodologies, this study aims to contribute to the advancement of language
server technology and its practical application in real-world projects.

== Research Purposes

This research aims to design, implement, and evaluate a comprehensive
#gls("lsp") ecosystem tailored to the specific requirements of the
Ungrammar programming language. By delving into the intricacies of #gls("lsp")
architecture, protocol specifications, and extension development, this study
seeks to create a robust, efficient, and user-friendly development environment
for Ungrammar developers.

Specifically, the research will focus on:

- Developing a core #gls("lsp") implementation that provides essential language features
  such as syntax highlighting, code completion, and error checking for Ungrammar.
- Creating Visual Studio Code extensions to seamlessly integrate the #gls("lsp") into
  both web and desktop development workflows.
- Designing and implementing an online demonstration playground to showcase the
  capabilities of the #gls("lsp") ecosystem.
- Exploring the potential of using Ungrammar as a #gls("meta-lang") to define #gls("lsp")
  language features, enabling a more flexible and adaptable approach to language
  server development.

By achieving these objectives, this research intends to contribute to the
advancement of #gls("lsp") technology and establish a strong foundation for future
research and development in language-specific tooling.

== Research Object and Scope

The primary research object is the development of a
#gls("lsp") ecosystem for the Ungrammar programming language. This ecosystem
encompasses a core #gls("lsp") implementation, Visual Studio Code extensions (web and
desktop), and an online demonstration playground. The scope of the research
includes the design, implementation, testing, and evaluation of the #gls("lsp"), its
integration with development tools, and the exploration of language generation
capabilities using Ungrammar.

The primary research object of this study is the development of a comprehensive
#gls("lsp") ecosystem tailored to the specific requirements
of the Ungrammar programming language. This ecosystem encompasses three core
components:

+ *Core #gls("lsp") Implementation*: The development of a robust #gls("lsp") implementation that
  provides essential language features such as syntax highlighting, code
  completion, error checking, and refactoring for Ungrammar.
+ *Visual Studio Code Extensions*: The creation of extensions for both web and
  desktop versions of Visual Studio Code to seamlessly integrate the #gls("lsp") and
  provide a rich development experience.
+ *Online Demonstration Playground*: The development of an interactive platform
  to showcase the capabilities of the #gls("lsp") ecosystem and facilitate user
  experimentation.

The scope of this research includes the design, implementation, testing, and
evaluation of these components. Additionally, it encompasses the exploration of
utilizing Ungrammar as a #gls("meta-lang") to define #gls("lsp") language features, thereby
enabling a more flexible and efficient approach to language server development.
Furthermore, the research will investigate the integration of the #gls("lsp") ecosystem
with other development tools and platforms to assess its interoperability and
potential for wider adoption.

== Research Methods

This research employs a mixed-methods approach to comprehensively investigate
the design, implementation, and evaluation of the #gls("lsp") ecosystem. Qualitative
research will be utilized to explore the underlying principles of #gls("lsp")
architecture, analyze design patterns, and identify potential challenges and
opportunities. In-depth case studies of existing #gls("lsp") implementations will be
conducted to inform the design and development process.

Quantitative research will be employed to assess the performance, usability, and
effectiveness of the developed #gls("lsp") ecosystem. Performance metrics, such as
response time, memory usage, and code completion latency, will be measured to
evaluate the system's efficiency. User studies and surveys will be conducted to
gather feedback on the usability and user experience of the #gls("lsp") and its
integration with development tools.

The research methodology encompasses several interconnected phases:

- *Literature Review*: A thorough examination of existing research on #gls("lsp"),
  language server development, and related fields to establish a theoretical
  foundation.
- *System Design*: The design and specification of the #gls("lsp") ecosystem, including
  the core #gls("lsp") implementation, extensions, and playground.
- *Implementation*: The development of the #gls("lsp") components based on the design
  specifications.
- *Testing*: Rigorous testing of the #gls("lsp") ecosystem to ensure functionality,
  performance, and reliability.
- *Evaluation*: User testing and performance evaluation to assess the usability
  and effectiveness of the system.

By combining these research methods, this study aims to provide a comprehensive
understanding of the #gls("lsp") ecosystem and its potential impact on developer
productivity.

== Practical Significance

The findings of this research are expected to contribute significantly to the
advancement of language server technology and its practical application in
software development. By demonstrating the feasibility of using a
language of #gls("meta-pgm") like Ungrammar to define Language structures, this
research opens up new possibilities for rapid language server development and
customization.

The developed #gls("lsp") ecosystem for Ungrammar can serve as a valuable reference and
benchmark for future language server implementations, providing insights into
best practices and potential challenges. Moreover, the research findings can
inform the design and development of improved #gls("ides") and text editors that
leverage the #gls("lsp") to enhance developer productivity and satisfaction.

Ultimately, this research aims to contribute to the broader ecosystem of
language-aware tools by providing a concrete example of how the #gls("lsp") can be
extended and applied to novel programming languages.

== Structure of the thesis

=== Chapter 1: Introduction

This chapter establishes the research context by outlining the evolution of
software development tools and the challenges faced by modern developers. It
introduces the #gls("lsp") as a potential solution to these
challenges and highlights the research gap in the context of emerging languages
like Ungrammar. The chapter concludes by presenting the research objectives and
the structure of the thesis.

=== Chapter 2: Literature Review

This chapter provides a comprehensive overview of existing research on the
#gls("lsp"), language server development, and related fields.
It analyzes the state-of-the-art in #gls("lsp") implementation, focusing on key
concepts, challenges, and best practices. Additionally, the chapter explores
relevant literature on #gls("meta-pgm") and its application in language
engineering.

=== Chapter 3: Requirements Analysis

Based on the literature review and the identified research objectives, this
chapter outlines the functional and non-functional requirements for the #gls("lsp")
ecosystem. It includes a detailed analysis of the target user groups, their
needs, and expectations. This chapter also identifies potential challenges and
constraints that may impact the system development.

=== Chapter 4: System Design and Architecture

This chapter delves into the core concepts of the #gls("lsp"),
explaining its architecture, communication mechanisms, and key components. It
also explores the design principles and patterns applied to the #gls("lsp")
implementation for the Ungrammar language. The chapter will discuss the
integration of the #gls("lsp") with the Visual Studio Code extension, highlighting the
key considerations and challenges involved.

=== Chapter 5: System Implementation

This chapter focuses on the practical implementation of the #gls("lsp") for the
Ungrammar language. It includes details about the language features supported,
data structures, and algorithms employed. The chapter also explores the
integration of Ungrammar as a #gls("meta-lang") for defining #gls("lsp") language structures,
discussing the implementation of the language generation process and its impact
on #gls("lsp") development efficiency.

=== Chapter 6: Evaluation and Results

This chapter presents the evaluation of the developed #gls("lsp") ecosystem. It includes
performance benchmarks, usability testing, and user feedback. The chapter
analyzes the results to assess the system's effectiveness in meeting the
research objectives and identifies potential areas for improvement.

=== Chapter 7: Conclusions and Future Work

This chapter summarizes the key findings of the research, highlights the
contributions made to the field of language server technology, and discusses the
limitations of the study. It concludes by outlining potential directions for
future research and development, including opportunities for expanding the #gls("lsp")
ecosystem and exploring new applications.