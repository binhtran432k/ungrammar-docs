=== Ungrammar Monaco Extension <subsec-impl-monaco>

The Ungrammar Monaco Extension represents a significant step forward in
bringing the Ungrammar language ecosystem to a broader audience within the
browser environment. By leveraging the Monaco editor, we've created a powerful
and accessible tool that offers a seamless coding experience.

Key Features and Benefits:

- *Direct Language Service Integration*: The extension directly integrates with
  the Ungrammar Language Service (@subsec-impl-langservice), eliminating the
  need for a separate Language Server module. This streamlined approach reduces
  the overall size of the extension, resulting in faster downloads and a more
  efficient user experience.
- *JSON-RPC Optimization*: We've optimized the communication between the
  extension and the Language Service by removing the JSON-RPC layer. This
  further contributes to improved performance and reduced overhead.
- *Enhanced Functionality*: The Ungrammar Monaco Extension provides a
  comprehensive set of language features, including syntax highlighting, code
  completion, diagnostics, and navigation, directly within the Monaco editor.
- *Seamless Integration*: The extension integrates seamlessly with the Monaco
  editor, offering a familiar and intuitive user interface.
- *Online Demonstration*: The Ungrammar Online Demonstration Playground
  (@subsec-impl-playground) utilizes the Ungrammar Monaco Extension to provide
  a live coding environment for users to explore and experiment with the
  language features.

In general, the Ungrammar Monaco Extension plays a crucial role in expanding
the reach of the Ungrammar language ecosystem and making it accessible to a
wider audience of developers.

==== Implementation Detail

The Ungrammar Monaco extension directly integrates with the Ungrammar Language
Service, eliminating the need for a separate Language Server. This streamlined
approach reduces overhead and improves performance by avoiding unnecessary JSON
parsing and server-side communication.

By leveraging the Language Service directly, the Monaco extension provides a
powerful and efficient environment for working with the Ungrammar language,
offering features like syntax highlighting, code completion, and diagnostics
without the additional complexity of a separate server.

#figure(
  raw(read("/assets/tree-monaco.txt"), block: true),
  caption: [Tree of Ungrammar Monaco workspace],
)

==== Deployment to NPM

Upon completion of development, we successfully deployed the Ungrammar Monaco
to the NPM registry. This strategic move allows other developers to easily
discover, integrate, and extend our project for their own language-related
endeavors. By making the Monaco extension readily available on NPM, we've
expanded the accessibility and potential impact of our work within the
developer community.

Here is our deployed Ungrammar Monaco, which has been downloaded by
158 users since its public release and is currently hosted at
#link("https://www.npmjs.com/package/ungrammar-monaco").

#figure(
  image("/assets/monaco.jpg", width: 90%),
  caption: [Deployed Ungrammar Monaco on NPM],
)
