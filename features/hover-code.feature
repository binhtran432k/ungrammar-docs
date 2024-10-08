Feature: Hover Code
    In order to improve my coding efficiency
    As a Language Provider
    I want to quickly access documentation for nodes

    Scenario: Retrieve Node Documentation
        Given I have a code with multiple nodes
        When I hover over a node
        Then I see the documentation for that node

    Scenario: No Documentation for Non-Node Elements
        Given I have a code with multiple nodes
        When I hover over a non-node element
        Then I do not see any documentation
