= Ungrammar Language Features Documentation <apx-doc>

#link("https://github.com/rust-analyzer/ungrammar")[Ungrammar] is a novel data
format for defining concrete syntax trees. This project aims to integrate
Ungrammar language support into VS Code, providing features to streamline the
creation and modification of `.ungram` files. By offering a dedicated language
experience within the editor, we aim to simplify the development process for
users working with this syntax definition format.

#figure(
  image(
    "/assets/main.png",
    width: 80%,
  ),
  caption: [Ungrammar within VS Code],
)

== Features

=== IntelliSense and Validation

We offer up node name suggestions as you type with IntelliSense. You can also
manually see suggestions with the Trigger Suggestions command (`Ctrl+Space`).

We also perform structural and value verification giving you red squiggles.
To disable validation, use the `ungrammar.validate.enable`
#link("https://code.visualstudio.com/docs/getstarted/settings")[setting].

#figure(
  image(
    "/assets/validation.png",
    width: 80%,
  ),
  caption: [IntelliSense],
)

=== Quick Navigation

Ungrammar files can get large and we support quick navigation to properties
using the Go to Symbol command (`Ctrl+Shift+O`).

#figure(
  image(
    "/assets/quick.png",
    width: 80%,
  ),
  caption: [Quick Navigation],
)

=== Hovers

When hovering over nodes within an Ungrammar data structure, detailed
context-specific information is displayed, aiding in understanding the code's
structure and relationships.

#figure(
  image(
    "/assets/hover.png",
    width: 60%,
  ),
  caption: [Hover],
)

=== Formatting

You can format your Ungrammar document using `Shift+Alt+F` or Format Document
from the context menu. To disable validation, use the `ungrammar.format.enable`
#link("https://code.visualstudio.com/docs/getstarted/settings")[setting].

Before formatting:

#figure(
  image(
    "/assets/format.png",
    width: 80%,
  ),
  caption: [Before Formatting],
)

After formatting:

#figure(
  image(
    "/assets/format2.png",
    width: 70%,
  ),
  caption: [After Formatting],
)

=== Folding

You can fold regions of source code using the folding icons on the gutter
between line numbers and line start. Folding regions are available for all
object and array elements.

Before folding:

#figure(
  image(
    "/assets/folding.png",
    width: 80%,
  ),
  caption: [Before Folding],
)

After folding:

#figure(
  image(
    "/assets/folding2.png",
    width: 60%,
  ),
  caption: [After Folding],
)

=== Annotations

We provide informative annotations displayed above code elements to aid in code
comprehension. These annotations offer quick access to references,
implementation details, and other relevant context, enhancing code navigability
and understanding.

#figure(
  image(
    "/assets/annotation.png",
    width: 60%,
  ),
  caption: [Annotation],
)

=== Expand and Shrink Selection

You can extend (`Alt+Shift+→`) or shrink (`Alt+Shift+←`) the current selection
to the encompassing syntactic construct (node, alternative, sequence, group,
etc). It works with multiple cursors.

#figure(
  image(
    "/assets/expand.png",
    width: 60%,
  ),
  caption: [Expand 1],
)
#figure(
  image(
    "/assets/expand2.png",
    width: 50%,
  ),
  caption: [Expand 2],
)
#figure(
  image(
    "/assets/expand3.png",
    width: 50%,
  ),
  caption: [Expand 3],
)
#figure(
  image(
    "/assets/expand4.png",
    width: 60%,
  ),
  caption: [Expand 4],
)
#figure(
  image(
    "/assets/expand5.png",
    width: 60%,
  ),
  caption: [Expand 5],
)

=== Find All References

You can find all references using `Shift+Alt+F12` to show all references of the
item at the cursor location.

#figure(
  image(
    "/assets/references.png",
    width: 80%,
  ),
  caption: [Find All References],
)

=== Go to Definition

You can navigate to the definition of an node using `F12`.

Before Go to Definition, we are at line 657:

#figure(
  image(
    "/assets/definition.png",
    width: 80%,
  ),
  caption: [Before Go to Definition],
)

After Go to Definition, we are at line 588:

#figure(
  image(
    "/assets/definition2.png",
    width: 80%,
  ),
  caption: [After Go to Definition],
)

=== Highlight Related

You can highlight related constructs upon hovering over a node. This feature
displays all references to the selected node within the current file, enhancing
code navigation and understanding.

#figure(
  image(
    "/assets/related.png",
    width: 60%,
  ),
  caption: [Highlight Related],
)

=== Rename

You can efficiently rename symbols across your codebase using the `F2`.
This powerful feature automatically updates all references to the selected
symbol, ensuring consistency and reducing the potential for errors.

#figure(
  image(
    "/assets/rename.png",
    width: 80%,
  ),
  caption: [Rename],
)

=== Code Actions

You can enhance your code formatting with our powerful code actions. Quickly
and easily rename nodes to specific casing styles including `snake_case`,
`CONSTANT_CASE`, `camelCase`, and `PascalCase`, ensuring consistent naming
conventions throughout your project.

#figure(
  image(
    "/assets/action.png",
    width: 60%,
  ),
  caption: [Provide Code Actions],
)

=== Semantic Syntax Highlighting

We highlight the code semantically. For example, "Rule" might be colored
differently depending on whether "Rule" is an `Definition` or a `Identifier`. We
does not specify colors directly, instead it assigns a tag (like variable) and
a set of modifiers (like definition) to each token. It's up to the client to
map those to specific colors.

#figure(
  image(
    "/assets/syntax.png",
    width: 80%,
  ),
  caption: [Semantic Syntax Highlighting],
)
