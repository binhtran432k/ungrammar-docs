Feature: Try Code Editor
    In order to enhance my coding experience
    As a User
    I want to seamlessly integrate with a code editor to leverage LSP features

    Scenario: Access Code Editor
        Given I am a normal user
        When I navigate the homepage
        Then I see a code editor interface

    Scenario: Edit Code
        Given I have the code editor open
        When I edit the code in the editor
        Then I see the changes are refected in the code

    Scenario: Use LSP Features
        Given I have the code editor open
        When I trigger a specific LSP feature
        Then I observe the corresponding LSP-powered functionality in the editor
