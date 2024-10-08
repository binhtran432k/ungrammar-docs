Feature: Find All References
    In order to enhance my coding efficiency
    As a Language Provider
    I want to efficiently locate and navigate to all references of a node

    Scenario: Retrieve Reference List
        Given I have a code with multiple nodes
        When I request to find all refereneces for a node
        Then I receive a list of references to that node

    Scenario: Navigate to Reference
        Given I have a list of references
        When I select a reference from the list
        Then I am navigated to the starting position of the selected reference

    Scenario: No References for Non-Node
        Given I have a code with multiple nodes
        When I request to find all refereneces for a non-node element
        Then I do not receive a list of references
