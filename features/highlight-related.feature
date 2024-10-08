Feature: Highlight Related
    In order to improve code comprehension
    As a Language Provider
    I want to visually identify nodes and their related references

    Scenario: Highlight Node and References
        Given I have a code with multiple nodes
        When I place the cursor on a node
        Then I see the node and its references are highlighted

    Scenario: No Highlight for Non-Node Elements
        Given I have a code with multiple nodes
        When I place the cursor on a non-node element
        Then I do not see the element is highlighted
