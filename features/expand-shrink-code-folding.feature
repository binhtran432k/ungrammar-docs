Feature: Expand/Shrink Code Folding
    In order to improve my coding efficiency
    As a Language Provider
    I want to expand or shrink code folding

    Scenario: Shrink Code Folding
        Given I have a code with an expanded node
        When I request to shrink the node
        Then I see the node is collapsed

    Scenario: Expand code folding
        Given I have a code with a collapsed node
        When I request to expand a node
        Then I see the node is expanded

    Scenario: No Effect on Non-Node Elements
        Given I have a code with multiple elements
        When I request to expand or shrink a non-node element
        Then I see no changes to code structure
