== Project Technology Stack

To effectively implement the Ungrammar Language Ecosystem, we have carefully
selected a robust set of technologies and applications:

#[
  #show figure: set block(breakable: true)
  #figure(
    table(
    columns: 3,
    align: left,
    table.header([*Technology Stack*], [*Version*], [*Description*]),
    // Neovim
    [Neovim],
    [0.10.1],
    [Primary editor for developing and testing the LSP (Language Server
    Protocol) implementation],
    // VSCode
    [Visual Studio Code],
    [1.93.1],
    [Used for testing the VS Code extension product, ensuring compatibility and
    proper functionality within the VS Code environment (@sec-vscode)],
    // TypeScript
    [TypeScript],
    [5.5.4],
    [A versatile programming language used to develop the language server and
    other components, ensuring efficient and maintainable code
    (@sec-typescript)],
    // VSCode Language Client
    [VSCode Language Client],
    [9.0.1],
    [A library that facilitates communication between the code editor and the
    language server, enabling seamless integration and feature support],
    // VSCode Language Server
    [VSCode Language Server],
    [9.0.1],
    [The core component responsible for providing language-specific features
    and functionalities, such as syntax highlighting, code completion, and
    diagnostics],
    // VSCode Text Document
    [VSCode Text Document],
    [1.0.11],
    [A fundamental component of VS Code that represents and manages text documents within the editor],
    // Lezer
    [Lezer],
    [1.7.1],
    [A high-performance parser generator used for parsing Ungrammar syntax,
    providing the foundation for language analysis and understanding (@sec-lezer)],
    // ESBuild
    [ESBuild],
    [0.23.0],
    [A modern JavaScript bundler that offers fast and efficient compilation and
    optimization for our project (@sec-esbuild)],
    // Bun
    [Bun],
    [1.1.21],
    [A versatile JavaScript runtime that combines the best features of Node.js
    and Deno, providing a robust environment for running our application (@sec-bun)],
    // Astro
    [Astro],
    [4.14.5],
    [A next-generation web framework that streamlines the development of static
    sites and single-page applications (@sec-astro)],
    // Preact
    [Preact],
    [10.23.2],
    [A lightweight JavaScript library for building user interfaces (@sec-preact)],
    // Daisy UI
    [Daisy UI],
    [4.12.10],
    [A popular UI framework built on top of Tailwind CSS, providing a
    collection of pre-designed components and styles for rapid UI development (@sec-daisyui)],
    // Lerna
    [Lerna],
    [8.1.8],
    [A tool for managing multiple packages within a single repository (@sec-lerna)],
  ),
    caption: [Ungrammar Language Ecosystem Technology Stack],
  )
]
