#import "/components/glossary.typ": gls

== Test-Driven Development (TDD) <sec-tdd>

#gls("tdd", mode:"full") is a software development methodology that emphasizes
writing tests before writing production code. This approach promotes a focus on
quality, maintainability, and testability. We will explore the key principles,
benefits, and challenges of #gls("bdd") (@sec-bdd).

#gls("tdd") is a valuable methodology that can significantly improve the
quality and maintainability of software projects. By writing tests before code,
developers can ensure that their systems meet the desired requirements and are
well-tested. While there may be initial challenges, the long-term benefits of
#gls("tdd") often outweigh the costs @bib-tdd.

=== Key Principles of TDD

- *Red-Green-Refactor Cycle*: #gls("tdd", mode:"full") follows a cyclical
  process:
  - *Red*: Write a failing test that defines the desired behavior.
  - *Green*: Write the minimum amount of production code to make the test pass.
  - *Refactor*: Refactor the code to improve its design and maintainability while
    ensuring the tests continue to pass.
- *Small, Focused Tests*: #gls("tdd") encourages writing small, focused tests that
  verify specific units of code.
- *Continuous Testing*: #gls("tdd") promotes a culture of continuous testing,
  ensuring that code changes are validated throughout the development process.

=== Benefits of Using TDD

- *Improved Code Quality*: #gls("tdd") can lead to cleaner, more maintainable
  code by encouraging modular design and early detection of bugs.
- *Increased Test Coverage*: Writing tests before code ensures that the system
  is thoroughly tested, improving its reliability.
- *Faster Development*: #gls("tdd") can accelerate development by providing a
  clear direction and preventing the accumulation of technical debt.
- *Enhanced Collaboration*: #gls("tdd") can foster collaboration among team
  members by providing a shared understanding of the system's requirements and
  behavior.

=== TDD and BDD

#gls("tdd") and #gls("bdd") are often used together to complement each other.
#gls("bdd") provides a high-level specification of the system's behavior, while
#gls("tdd") ensures that the implementation meets those specifications.
