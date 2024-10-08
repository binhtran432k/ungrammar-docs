Feature: Go to Definition
    In order to enhance my coding efficiency
    As a Language Provider
    I want to quickly navigate to the definition of a node

    Scenario: Navigate from Node
        Given I have a code with multiple nodes
        When I request to go to definition from a node
        Then I am taken to the starting position of the node's definition

    Scenario: No Navigation from Non-node
        Given I have a code with multiple nodes
        When I request to go to definition from a non-node element
        Then I remain in my current position
