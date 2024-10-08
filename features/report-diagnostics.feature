Feature: Report Diagnostics
    In order to improve my coding efficiency
    As a Language Provider
    I want to receive immediate error diagnostics while editing

    Scenario: No Diagnostics for Valid Code
        Given I have a valid code
        When I edit the code with valid code
        Then I do not receive a list of diagnostics

    Scenario: Syntax Error Diagnostics
        Given I have a valid code
        When I edit the code with syntax errors
        Then I receive a list of error diagnostics related to syntax errors

    Scenario: Undefined Error Diagnostics
        Given I have a valid code
        When I edit the code with undefined nodes
        Then I receive a list of error diagnostics related to undefined nodes

    Scenario: Redefined Error Diagnostics
        Given I have a valid code
        When I edit the code with redefined nodes
        Then I receive a list of error diagnostics related to redefined nodes
