Feature: Provide Code Completion
    In order to improve my coding efficiency
    As a Language Provider
    I want to receive suggestions for node names while editing

    Scenario: Node Name Completion While Editing
        Given I have a code with multiple nodes
        When I type inside a node
        Then I receive a list of node name suggestions that partially match my input

    Scenario: No Code Completion Within Comments
        Given I have a code with multiple nodes
        When I type inside a comment
        Then I do not receive a list of node name suggestions

    Scenario: No Code Completion Within Tokens
        Given I have a code with multiple nodes
        When I type inside a token
        Then I do not receive a list of node name suggestions
