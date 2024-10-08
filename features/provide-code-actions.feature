Feature: Provide Code Actions
    In order to improve my coding efficiency
    As a Language Provider
    I want to receive translation code actions for node names

    Scenario: Node Name Translation
        Given I have a code with multiple nodes
        When I request code actions for a node name
        Then I receive a list of node name translation to another case

    Scenario: No Code Actions Within Comments
        Given I have a code with multiple nodes
        When I request code actions within a comment
        Then I do not receive a list of code actions

    Scenario: No Code Actions Within Tokens
        Given I have a code with multiple nodes
        When I request code actions within a token
        Then I do not receive a list of code actions
