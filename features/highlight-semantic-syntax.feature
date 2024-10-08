Feature: Highlight Semantic Syntax
    In order to enhance readability and understanding
    As a Language Provider
    I want to visually distinguish different syntactic elements

    Scenario: Highlight All Syntax
        Given I have a code with multiple nodes
        When I request semantic syntax highlighting
        Then I see that all code elements are highlighted according to their semantic meaning
