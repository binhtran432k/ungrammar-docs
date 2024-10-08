Feature: Use LSP Features
    In order to enhance my coding experience
    As a User
    I want to leverage the full capabilities of the Language Server Protocol

    Scenario: Initialize LSP Core
        Given I have a code file
        When I request to initilize the LSP Core
        Then I receive an instance of the LSP Core

    Scenario: Execute LSP Feature
        Given I have an instance of the LSP Core
        When I request a specific LSP feature
        Then I receive the corresponding result
