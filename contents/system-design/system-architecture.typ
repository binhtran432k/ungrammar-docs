== System Architecture <sec-sys-arch>

=== Overview

#figure(
  image("/diagrams/generated/package/pkg-system.svg", width: 80%),
  caption: [Ungrammar Language Ecosystem Architecture],
)

The Ungrammar language ecosystem comprises six primary components and an
external component:

*Ungrammar Lezer*: A powerful parser built on the Lezer framework, specifically
designed to analyze and understand Ungrammar syntax.

*Ungrammar Language Service*:

- This core component encompasses various language features, including:

  - Annotation Service: Provides annotations for context-related information.
  - Hover Service: Offers contextual information when hovering over elements.
  - Completion Service: Provides code completion suggestions.
  - Code Action Service: Suggests code actions for refactoring or improvements.
  - Formatting Service: Applies consistent formatting rules to code.
  - Validation Service: Detects and reports errors or inconsistencies in the
    code.
  - Highlight Semantic Service: Highlights code elements based on their
    semantic meaning.
  - Highlight Related Service: Identifies and highlights references to specific
    elements.
  - Folding Service: Enables collapsing and expanding code sections for better
    readability.
  - Definition Service: Allows users to quickly jump to the definition of a
    symbol.
  - Reference Service: Helps users locate all references to a specific symbol
    within the codebase.

*Ungrammar Language Server*:

- LSP Implementation: Adheres to the Language Server Protocol (LSP) for
  seamless integration with various code editors.
- Communication Bridge: Acts as a communication intermediary between the code
  editor and the underlying Ungrammar language service.
- Language Service Integration: Leverages the *Ungrammar Language Service* to
  provide language-specific features and functionality.
- JSON-RPC Interface: Utilizes JSON-RPC Service for efficient data exchange between the
  language server and the code editor, enabling robust communication and
  feature implementation.

*Ungrammar VS Code Extension*:

- Language Server Integration: Seamlessly integrates the *Ungrammar Language
  Server* with the VS Code editor, providing a comprehensive language support
  experience.
- Communication Bridge: Acts as a communication intermediary between the VS
  Code editor and the language server, ensuring efficient data exchange and
  feature implementation.

*Ungrammar Monaco*:

- Seamless Integration: Integrates the *Ungrammar Language Service* with the
  Monaco editor, providing robust language support capabilities within the
  Monaco environment.
- JavaScript-Based Communication: Manages communication between the Monaco
  editor and the language server using pure JavaScript, ensuring efficient data
  exchange and feature implementation.
- Enhanced Code Editing: Enables a range of LSP features within the Monaco
  editor, including syntax highlighting, code completion, diagnostics, and
  navigation, to enhance the overall coding experience.

*Ungrammar Online Demonstration Playground*:

- Interactive Environment: Provides a web-based platform for users to explore
  and experiment with the Ungrammar language features in a live coding
  environment.
- Monaco Editor Integration: Leverages the *Monaco Editor* component to offer a
  robust and customizable code editing experience.
- Language Feature Showcase: Demonstrates the capabilities of the *Ungrammar
  Monaco*, including syntax highlighting, code completion,
  diagnostics, and other essential features.
- User-Friendly Interface: Presents the language features and functionality in
  an intuitive and accessible manner, making it easy for users to learn and
  experiment.
- Code Examples: Provides code examples and tutorials to guide users in
  effectively utilizing the Ungrammar language.

*Monaco Editor (external)*:

- Powerful Code Editor: A versatile and customizable code editor component that
  provides a rich text editing experience within the web-based demonstration.
- Core Features: Offers essential text editing functionalities such as syntax
  highlighting, code completion, code folding, and indentation.
- Customization Options: Allows for customization of themes, keybindings, and
  other editor preferences to tailor the experience to individual needs.
- Performance Optimization: Designed for efficient performance, even when
  handling large codebases.

=== Benefits of Modular Architecture

*Enhanced Maintainability*: The well-structured modular design facilitates
easier maintenance and updates by isolating changes to specific components.

*Increased Flexibility*: The modular design allows for greater customization
and integration with various platforms, ensuring adaptability to evolving
requirements.

*Improved Performance*: The separation of concerns between modules reduces
complexity and improves overall system performance, leading to a more
responsive and efficient user experience.

*Reusability*: The Language Service and Language Server modules can potentially
be reused in other projects, saving development time and effort.

*Reduced Coupling*: The separation of concerns minimizes dependencies between
modules, making it easier to isolate changes and prevent unintended side
effects.
