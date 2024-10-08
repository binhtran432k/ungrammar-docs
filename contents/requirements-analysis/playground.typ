=== Ungrammar Online Demonstration Playground

==== List of Usecase

- Try Code Editor
- Change Theme
- View Security
- View Documentation

==== Usecase Diagram

#figure(
  image("/diagrams/generated/usecase/uc-ungram-playground.svg", width: 80%),
  caption: [Usecase Diagram of Ungrammar Online Demonstration Playground]
)

==== Usecase Specifications

#[
  #set raw(lang: "gherkin", block: true)
  #figure(
    raw(read("/features/try-code-editor.feature")),
    caption: [Try Code Editor Usecase],
  )
  #figure(
    raw(read("/features/change-theme.feature")),
    caption: [Change Theme Usecase],
  )
  #figure(
    raw(read("/features/view-security.feature")),
    caption: [View Security Usecase],
  )
  #figure(
    raw(read("/features/view-documentation.feature")),
    caption: [View Documentation Usecase],
  )
]
