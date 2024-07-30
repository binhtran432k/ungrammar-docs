#import "/book/components/glossary.typ": gls

== Monaco Editor
<sec-monaco>

The Monaco Editor, renowned as the foundation of #gls("vscode") (@sec-vscode), has emerged as a versatile and performant text editing component. While primarily recognized for its role within the #gls("vscode") ecosystem, the Monaco Editor offers a standalone solution for embedding code editing capabilities into web applications @bib-monaco.

To effectively leverage the Monaco Editor for building custom language support, a solid understanding of its underlying architecture and core concepts is essential. This paper delves into the intricacies of the Monaco Editor, exploring its key components, functionalities, and integration possibilities. By examining the Monaco Editor's capabilities, we aim to establish a foundation for implementing a robust code playground that showcases the power of our #gls("lsp") implementation.

=== Models

At the core of the Monaco Editor lies the concept of models. A model represents a virtual document, encapsulating the text content, language information, and edit history. While models can be associated with files on the local file system, they are not strictly tied to physical storage. This flexibility allows the Monaco Editor to handle a wide range of content, including in-memory buffers, remote files, or even generated content.

By abstracting the underlying storage mechanism, models provide a consistent interface for interacting with text content. This approach enables features like undo/redo, diffing, and collaboration to be implemented efficiently. Additionally, models play a crucial role in supporting language-specific features, as they provide the necessary context for syntax highlighting, code completion, and other language-aware functionalities.

=== URIs

Each model within the Monaco Editor is uniquely identified by a #gls("uri", mode: "full"). This mechanism prevents ambiguity and ensures that multiple models can coexist within the editor without conflicts.

By adopting a virtual file system approach, developers can map models to physical files on the local system using #gls("uri", mode: "short")s starting with `file:///`. This convention provides a familiar and intuitive way to represent files within the editor. However, it's essential to note that the Monaco Editor is not restricted to file-based models.

For models that do not have a corresponding file system path, Monaco assigns a generic in-memory #gls("uri") in the format `inmemory://model/<number>`. This allows for the creation of temporary or dynamically generated content without requiring a physical file. The numerical suffix ensures uniqueness and enables tracking of in-memory models.

=== Editors

Editors in the Monaco Editor serve as the visual representation of underlying models. They are responsible for rendering text content, handling user interactions, and managing view state.

Key functions of editors include:

- *Rendering*: Transforming the model's text content into a visually presentable format, incorporating syntax highlighting, code folding, and other formatting elements.
- *User interaction*: Handling keyboard and mouse input, enabling text selection, editing, and navigation.
- *View state management*: Preserving user preferences such as zoom level, line wrapping, and cursor position.
- *Collaboration*: Supporting real-time collaboration features, such as co-editing and conflict resolution.

=== Providers

Providers are essential components of the Monaco Editor that enrich the editing experience by offering intelligent features. These features typically involve interactions with the underlying model and often leverage language server protocols for advanced language support.

==== Types of Providers

*Completion Provider*: Offers suggestions for code completion based on context, including keywords, variable names, and function calls.

*Hover Provider*: Displays additional information or documentation when the cursor hovers over code elements.

*Document Formatting Provider*: Automatically formats code according to defined style guidelines.

*Document Symbol Provider*: Provides an outline of the code structure, including classes, functions, and variables.

*Definition Provider*: Enables navigation to the definition of symbols.

*References Provider*: Finds all references to a specific symbol within the codebase.

*Code Action Provider*: Suggests code improvements or refactoring options.

==== Provider Interactions

Providers often collaborate with language servers to deliver comprehensive language support. For example, a TypeScript language server can provide code completion suggestions based on the analyzed codebase. The Monaco Editor's provider framework then presents these suggestions to the user in an appropriate format.

To ensure accurate and relevant feature delivery, providers typically operate on specific models. By correctly associating models with file #gls("uri", mode: "short")s, providers can access the appropriate language services and provide context-aware features. For instance, a #gls("json") schema provider can determine the applicable schema based on the file #gls("uri"), enabling intelligent code completion and validation for #gls("json") documents.

=== Disposables

The Monaco Editor employs a disposable pattern to manage resources efficiently. Many components, including models, editors, and providers, implement a `dispose()` method. This method is invoked when a component is no longer required, allowing for the release of associated resources.

Key benefits of the disposable pattern:

- *Memory management*: By disposing of unused components, the editor can prevent memory leaks and improve performance.
- *Resource optimization*: Releasing file handles, network connections, and other resources when they are no longer needed.
- *Dependency management*: Ensuring that dependent components are also disposed of to avoid resource leaks.

Examples of disposable objects:

- *Models*: When a model is closed or no longer needed, calling `model.dispose()` releases the associated memory and resources.
- *Editors*: Disposing of an editor removes it from the #gls("dom", mode: "short") and unregisters listeners.
- *Providers*: Disposing of providers stops background tasks and releases any held resources.

By effectively utilizing the `dispose()` method, developers can write clean and efficient Monaco Editor applications that manage resources responsibly.