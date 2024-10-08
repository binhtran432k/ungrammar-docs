=== Ungrammar Language Server <subsec-impl-langserver>

The Ungrammar Language Server acts as a crucial intermediary, facilitating
communication between the Language Service and various code editors. By
implementing the JSON-RPC protocol and adhering to the Language Server Protocol
(LSP) specification, the Language Server ensures seamless integration and
effective feature exchange.

Key Features and Benefits:

- *JSON-RPC Protocol*: Enables efficient data exchange between the Language
  Service and code editors, using a well-defined protocol for communication.
- *LSP Adherence*: Conforms to the LSP specification, ensuring compatibility
  with a wide range of code editors and IDEs.
- *Caching Mechanism*: Implements a caching mechanism to store results from the
  Language Service, reducing processing time and improving performance for
  common operations like undo and redo.
- *Integration Flexibility*: Can be integrated with various code editors and
  development environments, providing a versatile and adaptable language
  support solution.

The Ungrammar Language Server plays a pivotal role in the ecosystem by:

- *Serving as a communication gateway*: Facilitating interaction between the
  Language Service and code editors.
- *Enhancing performance*: Optimizing the language support experience through
  caching and efficient communication.
- *Enabling LSP features*: Providing a foundation for implementing LSP features
  within code editors.

==== Implementation Detail

To optimize performance and improve the user experience, we've extended the
Ungrammar Language Service with a caching mechanism. This mechanism efficiently
stores and retrieves results from previous language analysis tasks,
significantly reducing processing time for common operations like undo and
redo.

Furthermore, we've meticulously translated all core features of the Language
Service into LSP definitions using the JSON-RPC protocol. This ensures seamless
integration with various code editors and provides a standardized interface for
accessing language-specific functionalities.

By incorporating these enhancements, we've created a more responsive and
efficient Language Server that delivers a superior user experience and
streamlines the development process.

#figure(
  raw(read("/assets/tree-server.txt"), block: true),
  caption: [Tree of Ungrammar Language Server workspace],
)

==== Deployment to NPM

Upon completion of development, we successfully deployed the Ungrammar Language
Server to the NPM registry. This strategic move allows other developers to
easily discover, integrate, and extend our project for their own
language-related endeavors. By making the Language Server readily available on
NPM, we've expanded the accessibility and potential impact of our work within
the developer community.

Here is our deployed Ungrammar Language Server, which has been downloaded by
152 users since its public release and is currently hosted at
#link("https://www.npmjs.com/package/ungrammar-languageserver").

#figure(
  image("/assets/server.jpg", width: 90%),
  caption: [Deployed Ungrammar Language Server on NPM],
)
