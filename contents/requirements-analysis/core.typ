=== Ungrammar Language Core

==== List of Usecase

- View Annotations
- Provide Code Completion
- Provide Code Actions
- Report Diagnostics
- Go to Definition
- Find All References
- Expand/Shrink Code Folding
- Expand/Shrink Code Selection
- Rename Code
- Hover Code
- Format Code
- Highlight Semantic Syntax
- Highlight Related
- Provide Quick Navigation
- Update Configuration

==== Usecase Diagram

#figure(
  image("/diagrams/generated/usecase/uc-ungram-core.svg", width: 60%),
  caption: [Usecase Diagram of Ungrammar Language Core]
)

==== Usecase Specifications

#[
  #show figure: set block(breakable: true)
  #set raw(lang: "gherkin", block: true)
  #figure(
    raw(read("/features/view-annotations.feature")),
    caption: [View Annotations Usecase],
  )
  #figure(
    raw(read("/features/provide-code-completion.feature")),
    caption: [Provide Code Completion Usecase],
  )
  #figure(
    raw(read("/features/provide-code-actions.feature")),
    caption: [Provide Code Actions Usecase],
  )
  #figure(
    raw(read("/features/report-diagnostics.feature")),
    caption: [Report Diagnostics Usecase],
  )
  #figure(
    raw(read("/features/go-to-definition.feature")),
    caption: [Go to Definition Usecase],
  )
  #figure(
    raw(read("/features/find-all-references.feature")),
    caption: [Find All References Usecase],
  )
  #figure(
    raw(read("/features/expand-shrink-code-folding.feature")),
    caption: [Expand/Shrink Code Folding Usecase],
  )
  #figure(
    raw(read("/features/rename-code.feature")),
    caption: [Rename Code Usecase],
  )
  #figure(
    raw(read("/features/hover-code.feature")),
    caption: [Hover Code Usecase],
  )
  #figure(
    raw(read("/features/format-code.feature")),
    caption: [Format Code Usecase],
  )
  #figure(
    raw(read("/features/highlight-semantic-syntax.feature")),
    caption: [Highlight Semantic Syntax Usecase],
  )
  #figure(
    raw(read("/features/highlight-related.feature")),
    caption: [Highlight Related Usecase],
  )
  #figure(
    raw(read("/features/provide-quick-navigation.feature")),
    caption: [Provide Quick Navigation Usecase],
  )
  #figure(
    raw(read("/features/update-configuration.feature")),
    caption: [Update Configuration Usecase],
  )
]
