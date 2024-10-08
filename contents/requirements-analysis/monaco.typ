=== Ungrammar Monaco

==== List of Usecase

- Use LSP Features

==== Usecase Diagram

#figure(
  image("/diagrams/generated/usecase/uc-ungram-monaco.svg", width: 80%),
  caption: [Usecase Diagram of Ungrammar Monaco]
)

==== Usecase Specifications

#[
  #set raw(lang: "gherkin", block: true)
  #figure(
    raw(read("/features/use-lsp-features.feature")),
    caption: [Use LSP Features Usecase],
  )
]
