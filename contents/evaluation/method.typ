#import "/components/glossary.typ": gls

== Evaluation Method

To ensure the quality and functionality of the Ungrammar Language Ecosystem,
we've implemented a robust evaluation plan that leverages #gls("tdd")
(@sec-tdd) and #gls("bdd") (@sec-bdd) methodologies. By employing a combination
of #gls("tdd") and #gls("bdd"), we can establish a robust evaluation process
that ensures the quality, reliability, and user satisfaction of the Ungrammar
Language Ecosystem.

=== TDD for Unit Testing

==== Unit Testing the Ungrammar Lezer Parser

To ensure the accuracy and efficiency of the Ungrammar Lezer Parser
(@subsec-impl-lezer), we've implemented a comprehensive testing strategy using
#gls("tdd") (@sec-tdd) principles. By writing tests before writing production
code, we can verify that the parser correctly handles various syntactic
constructs and efficiently generates the expected parse trees.

By employing a rigorous testing strategy and utilizing the power of #gls("tdd",
mode:"full") and #gls("ci", mode:"full"), we've established a strong foundation
for the Ungrammar Lezer Parser, ensuring its reliability and accuracy.

- *Key Testing Approaches*:
  - *Unit Testing*: Create unit tests to evaluate the parser's ability to handle
    different grammar constructs, including valid and invalid inputs.
  - *Edge Case Testing*: Design tests to cover edge cases and potential error
    scenarios, ensuring the parser's robustness.
- *Testing Framework*: We've chosen Bun Test as our testing framework due to
  its speed, efficiency, and compatibility with our existing project structure.
  Bun Test provides a powerful set of tools for writing and running tests,
  ensuring thorough coverage of the parser's functionality.
- *Continuous Integration*: To maintain code quality and prevent regressions,
  we've integrated Bun Test into our #gls("ci")/#gls("cd") pipeline using
  GitHub Actions (@sec-githubactions). This ensures that all code changes are
  automatically tested, providing early feedback and catching potential issues
  before they are merged into the main branch.

==== Unit Testing the Ungrammar Language Service

To ensure the reliability and correctness of the Ungrammar Language Service
(@subsec-impl-langservice), we've implemented a comprehensive testing strategy
that focuses on unit testing the core logic within the module. By isolating and
testing individual components, we can identify and address potential issues
early in the development process.

By adopting a rigorous unit testing approach and leveraging powerful testing
tools, we've established a strong foundation for the Ungrammar Language
Service, ensuring its reliability, correctness, and performance.

- *Unit Testing Approach*:
  - *Component-Level Testing*: Create unit tests for each component within the
    Language Service module, ensuring that they function as expected in
    isolation.
  - *Input Validation*: Test the module's ability to handle various input
    scenarios, including valid and invalid data.
  - *Error Handling*: Verify that the module handles errors and exceptions
    gracefully, providing informative feedback to the user.
- *Testing Framework*: We've chosen Bun Test as our testing framework due to
  its speed, efficiency, and compatibility with our existing project structure.
  Bun Test provides a powerful set of tools for writing and running tests,
  ensuring thorough coverage of the parser's functionality.
- *Continuous Integration*: To maintain code quality and prevent regressions,
  we've integrated Bun Test into our #gls("ci")/#gls("cd") pipeline using
  GitHub Actions (@sec-githubactions). This ensures that all code changes are
  automatically tested, providing early feedback and catching potential issues
  before they are merged into the main branch.

=== BDD for User Acceptance Testing

==== User Acceptance Testing for VS Code Extension and Online Playground

To effectively evaluate the functionality and user experience of the Ungrammar
VS Code Extension and Online Playground, we've adopted a #gls("uat",
mode:"full") approach based on #gls("bdd", mode:"full").

By combining #gls("uat") with #gls("bdd"), we were able to effectively evaluate
the functionality and usability of our Ungrammar VS Code Extension
(@subsec-impl-vscode) and Ungrammar Online Demonstration Playground
(@subsec-impl-playground), ensuring that they meet the needs of our users and
provide a valuable contribution to the Ungrammar language ecosystem.

- *BDD with Gherkin*:
  - *User Stories and Scenarios*: Defined clear user stories and acceptance
    criteria using Gherkin syntax to outline the expected behavior of the
    extension and playground from the end-user's perspective.
  - *Test Cases*: Created detailed test cases based on the Gherkin scenarios,
    covering various usage scenarios and potential edge cases.
- *Manual Testing*:
  - *Real-World Simulation*: Conducted manual testing to simulate real-world
    user interactions and evaluate the system's performance, usability, and
    adherence to requirements.
  - *Scenario Execution*: Executed test cases based on the Gherkin scenarios,
    verifying that the system behaves as expected.
  - *Feedback Gathering*: Collected feedback from end-users to identify any
    areas for improvement or additional features.
- *Benefits of UAT with BDD*:
  - *User-Centric Focus*: Ensured that the system meets the needs and
    expectations of end-users by focusing on their perspective.
  - *Early Validation*: Identified potential issues and areas for improvement
    before the final release.
  - *Improved Quality*: Enhanced the overall quality and user experience of the
    VS Code extension and online playground.
  - *Collaboration*: Fostered collaboration among stakeholders by providing a
    shared understanding of the system's requirements.

=== Key Benefits of TDD and BDD

- *Early Bug Detection*: TDD and BDD help identify and address issues early in
  the development process, reducing the cost of fixing defects later.
- *Improved Code Quality*: Writing tests before or alongside code encourages
  cleaner, more maintainable code.
- *Enhanced Collaboration*: BDD fosters collaboration among stakeholders by
  providing a shared understanding of the system's requirements.
- *Living Documentation*: Gherkin scenarios can serve as living documentation,
  providing a clear and up-to-date record of the system's behavior.

=== Evaluation Process

- *Develop Test Cases*: Create comprehensive test cases using TDD and BDD
  methodologies.
- *Execute Tests*: Run unit tests and user acceptance tests to validate system
  functionality.
- *Analyze Results*: Analyze test results to identify any issues or
  discrepancies.
- *Iterate and Improve*: Refactor code and address identified issues based on
  test results.

=== Evaluation Result

#[#show figure: set block(breakable: true)
  #figure(
    raw(read("/assets/result.log"), block: true),
    caption: [Evaluation Result of Unit Testing],
  )
  #figure(
    table(
      columns: 3,
      table.header([*Test Case*], [*VS Code*], [*Online Playground*]),
      [View Annotations], [Pass], [Pass],
      [Provide Code Completion], [Pass], [Pass],
      [Provide Code Actions], [Pass], [Pass],
      [Report Diagnostics], [Pass], [Pass],
      [Go to Definition], [Pass], [Pass],
      [Find All References], [Pass], [Pass],
      [Expand/Shrink Code Folding], [Pass], [Pass],
      [Rename Code], [Pass], [Pass],
      [Hover Code], [Pass], [Pass],
      [Format Code], [Pass], [Pass],
      [Highlight Semantic Syntax], [Pass], [Pass],
      [Highlight Related], [Pass], [Pass],
      [Provide Quick Navigation], [Pass], [Pass],
      [Update Configuration], [Pass], [Pass],
    ),
    caption: [Evaluation Result of #gls("uat", mode:"full")],
  )
]
