=== Ungrammar VS Code Extension <subsec-impl-vscode>

The Ungrammar VS Code extension offers a rapid and accessible means of
introducing the Ungrammar language ecosystem to a broader user base,
capitalizing on the widespread popularity of the VS Code editor.

Key Features and Benefits:

- *Seamless Integration*: Integrates seamlessly with the VS Code environment,
  providing a familiar and intuitive user experience.
- *LSP-Powered Features*: Leverages the power of the Language Server Protocol
  (LSP) to deliver a comprehensive set of language features within VS Code.
- *Enhanced Productivity*: Streamlines development workflows by providing
  features like code completion, syntax highlighting, diagnostics, and
  navigation.
- *User-Friendly Interface*: Presents a user-friendly interface that is easy to
  learn and use, even for developers new to the Ungrammar language.

Technical Implementation:

- *Client-Server Architecture*: Employs a client-server architecture, where the
  VS Code extension acts as the client and communicates with the Ungrammar
  Language Server (@subsec-impl-langserver).
- *LSP Communication*: Utilizes the LSP protocol for efficient data exchange and
  feature implementation.
- *Customizable Settings*: Offers customizable settings to allow users to tailor
  the extension's behavior to their preferences.

Overall, the Ungrammar VS Code extension serves as a valuable tool for
developers who want to leverage the power of the Ungrammar language within the
VS Code environment.

==== Implementation Detail

The Ungrammar VS Code extension leverages the power of the Ungrammar Language
Server to provide a rich set of language features within the VS Code
environment. By establishing a communication channel between the extension and
the language server, we've enabled the seamless integration of LSP
capabilities, enhancing the coding experience for users.

#figure(
  raw(read("/assets/tree-vscode.txt"), block: true),
  caption: [Tree of Ungrammar VS Code Extension workspace],
)

==== Writing Documentation

To ensure a seamless user experience and facilitate the effective use of our
Ungrammar VS Code extension, we have developed comprehensive documentation that
provides detailed guidance and information (See more in @apx-doc).

==== Deployment to Visual Studio Marketplace

To make our Ungrammar VS Code extension readily accessible to a wider audience,
we have successfully deployed it to the Visual Studio Marketplace under the
name "Ungrammar Language Features"
(#link("https://marketplace.visualstudio.com/items?itemName=binhtran432k.ungrammar-language-features")).
This strategic move allows users to easily discover, install, and utilize our
extension within their VS Code environment.

#figure(
  image("/assets/vscode.jpg", width: 90%),
  caption: [Deployed Ungrammar Language Features on Visual Studio Marketplace],
)
