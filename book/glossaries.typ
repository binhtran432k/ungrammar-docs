#let abbreviations = (
  "api": ("API", "Application Programming Interface"),
  "apis": ("APIs", "Application Programming Interfaces"),
  "ast": ("AST", "Abstract Syntax Tree"),
  "css": ("CSS", "Cascading Style Sheets"),
  "cst": ("CST", "Concrete Syntax Tree"),
  "dom": ("DOM", "Document Object Model"),
  "dsl": ("DSL", "Domain-Specific Language"),
  "http": ("HTTP", "HyperText Transfer Protocol"),
  "html": ("HTML", "HyperText Markup Language"),
  "id": ("ID", "Identifier"),
  "ides": ("IDEs", "Integrated Development Environments"),
  "jsx": ("JSX", "JavaScript XML"),
  "lr": ("LR", "Left-to-right, Rightmost derivation"),
  "lsp": ("LSP", "Language Server Protocol"),
  "nast": ("NAST", "Non-Abstract Syntax Tree"),
  "json": ("JSON", "JavaScript Object Notation"),
  "rpc": ("RPC", "Remote Procedure Call"),
  "uri": ("URI", "Uniform Resource Identifier"),
  "ui": ("UI", "User Interface"),
  "vscode": ("VS Code", "Visual Studio Code"),
  "xml": ("XML", "Extensible Markup Language"),
)

#let symbols = (:)

#let glossaries = (
  "electron": (
    "Electron",
    "A framework that enables developers to create native desktop applications using web technologies like HTML, CSS, and JavaScript",
  ),
  "git": ("Git", "A distributed version control system used for tracking changes in computer files."),
  "json-rpc": ("JSON-RPC", "A remote procedure call (RPC) protocol encoded in JSON"),
  "meta-lang": ("meta-language", "Language used to describe another language"),
  "meta-pgm": (
    "meta-programming",
    "Programming technique where a program can manipulate or generate other programs as its data",
  ),
  "utf8": ("UTF-8", "A variable-length character encoding standard used for electronic communication"),
)

#let GLOSSARIES = (
  abbreviation: abbreviations,
  symbol: symbols,
  glossary: glossaries,
)