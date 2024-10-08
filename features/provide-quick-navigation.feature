Feature: Provide Quick Navigation
    In order to improve my coding efficiency
    As a Language Provider
    I want to navigate between nodes by quickly accessing a list of their names

    Scenario: Retrieve Node Name List
        Given I have a code with multiple nodes
        When I request a list of node names for quick navigation
        Then I receive a list containing the names of all nodes within the code
