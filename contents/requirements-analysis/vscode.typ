=== Ungrammar VS Code Extension

==== List of Usecase

- Use LSP Features
- View Documentation

==== Usecase Diagram

#figure(
  image("/diagrams/generated/usecase/uc-ungram-vscode.svg", width: 80%),
  caption: [Usecase Diagram of Ungrammar VS Code Extension]
)

==== Usecase Specifications

#[
  #set raw(lang: "gherkin", block: true)
  #figure(
    raw(read("/features/use-lsp-features.feature")),
    caption: [Use LSP Features Usecase],
  )
  #figure(
    raw(read("/features/view-documentation.feature")),
    caption: [View Documentation Usecase],
  )
]
