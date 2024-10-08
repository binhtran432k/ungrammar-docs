#import "/components/glossary.typ": gls

= Requirements Analysis

== Functional requirements

This section outlines the functional requirements for a robust language support
system centered around Ungrammar, a grammar definition language. To achieve
maximum flexibility and adaptability, the system is designed as a modular
collection of interconnected components.

The overarching goal is to create a versatile solution that can seamlessly
integrate into various development environments, including both desktop and
web-based editors. To accomplish this, the system is divided into the following
core subsystems:

- *Ungrammar Language Core*: The foundational component responsible for
  handling the core #gls("lsp") protocol and providing essential language
  features.
- *Ungrammar VS Code Extension*: Integrating the language support into the
  #gls("vscode") editor, leveraging its extension #gls("api") for seamless user
  experience.
- *Ungrammar Monaco*: Enabling language features within web-based applications
  utilizing the Monaco editor.
- *Ungrammar Online Demonstration Playground*: A web-based environment
  showcasing the language support capabilities and serving as a development and
  testing platform.

By adopting this modular approach, we aim to optimize code reusability,
maintainability, and scalability while ensuring maximum flexibility in
deployment and integration.

The following sections will detail the specific functional requirements for
each subsystem. Each subsystem will be broken down into use cases, use case
diagrams, and use case specifications. Notably, the use case specifications
will be defined in Gherkin syntax, facilitating a #gls("bdd") approach to
streamline the development process.

#include "core.typ"

#include "vscode.typ"

#include "monaco.typ"

#include "playground.typ"

== Non-functional requirements

*Security*

- *Anonymous Access*: The system does not require user authentication.
- *Data Privacy*: No user data is collected or transmitted.
- *Open-Source Transparency*: The system is open-source, ensuring transparency and community involvement.

*Performance*

- *Efficient Processing*: Handles large files with minimal processing time and delays.
- *Fast Page Loading*: Ensures a quick and responsive user experience.

*Availability*

- *24/7 Accessibility*: The system is always available for use, without interruptions.
- *Continuous Operation*: Maintains operation during maintenance periods.
- *Cross-Platform Compatibility*: Accessible via both web and desktop versions.

*Reliability*

- *Consistent Functionality*: All features operate as expected, without errors or unexpected behavior.
- *Data Integrity*: User data is protected, and no data is deleted unless explicitly requested by the user.
