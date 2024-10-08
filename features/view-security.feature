Feature: View Security
    In order to protect my privacy
    As a User
    I want to be informed about the system's security measures

    Scenario: Retrieve Security Declaration
        Given I am a normal user
        When I navigate to the security page
        Then I see the system's security declaration
