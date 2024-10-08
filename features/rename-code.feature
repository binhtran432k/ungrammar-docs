Feature: Rename Code
    In order to improve my coding efficiency
    As a Language Provider
    I want to rename nodes and their references

    Scenario: Rename Node
        Given I have a code with multiple nodes
        When I request to rename a node with a new name
        Then I see all occurrences of the node name are updated to the new name

    Scenario: No Renaming for Non-Node Elements
        Given I have a code with multiple nodes
        When I request to rename a non-node element with a new name
        Then I see that the element remains unchanged
