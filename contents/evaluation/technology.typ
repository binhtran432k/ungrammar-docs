#import "/components/glossary.typ": gls

== Evaluation Technology

=== Bun Test

To comprehensively evaluate the Ungrammar Language Ecosystem, we've
strategically employed Bun (@sec-bun) Test as our primary testing framework.
Bun Test, a versatile testing tool, not only streamlines the testing process
but also aligns seamlessly with our existing project structure, eliminating the
need to introduce additional dependencies.

Key Benefits of Using Bun Test:

- *Efficiency*: Bun Test's speed and performance significantly enhance our
  testing efficiency.
- *Integration*: Its compatibility with our existing Bun-based project
  simplifies the testing process and reduces overhead.
- *Comprehensive Testing*: Bun Test provides a robust set of features for
  writing and executing various types of tests, ensuring thorough evaluation of
  our ecosystem.
- *Reduced Dependencies*: By leveraging Bun Test, we avoid introducing
  unnecessary dependencies, maintaining a cleaner and more focused project
  structure.

Overall, Bun Test has proven to be an invaluable tool for evaluating the
Ungrammar Language Ecosystem, ensuring its quality, reliability, and
performance.

=== GitHub Actions

To ensure the system's reliability and prevent regressions, we've implemented a
robust #gls("ci") pipeline using GitHub Actions (@sec-githubactions). This
automated process leverages Bun Test to execute comprehensive tests with each
code change, safeguarding the integrity of our project.

Key Benefits:

- *Early Detection of Issues*: GitHub Actions automatically runs tests on every
  code push, enabling early detection of potential problems before they impact
  the main codebase.
- *Improved Code Quality*: By consistently running tests, we maintain high code
  quality standards and reduce the risk of introducing regressions.
- *Streamlined Development*: GitHub Actions streamlines the development process
  by automating testing and providing valuable feedback, allowing developers to
  focus on writing new features.
- *Collaboration*: GitHub Actions facilitates collaboration among team members
  by providing a centralized platform for reviewing and testing code changes.

With the integration of GitHub Actions into our workflow, we've established a
reliable and efficient #gls("ci") process that significantly enhances the
overall quality and stability of our Ungrammar Language Ecosystem.

=== Manual Test

In addition to automated testing with Bun Test, we also conduct thorough manual
testing to ensure the ecosystem's functionality aligns with our expectations
throughout development and deployment. This dual-pronged testing approach
strengthens the reliability and robustness of our system.

Key Benefits of Manual Testing:

- *Complementary Approach*: Manual testing acts as a valuable complement to
  automated testing, identifying issues that might be overlooked by automated
  scripts.
- *Real-World Scenarios*: Simulates how end-users will interact with the
  system, ensuring a seamless and intuitive experience.
- *Edge Case Detection*: Helps uncover potential bugs or unexpected behaviors
  that automated tests might miss.
- *Human Intuition*: Leverages human judgment to assess the system's overall
  usability, performance, and adherence to design requirements.

By combining automated and manual testing, we create a comprehensive testing
strategy that enhances the quality and reliability of the Ungrammar Language
Ecosystem.
