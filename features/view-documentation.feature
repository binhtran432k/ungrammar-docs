Feature: View Documentation
    In order to enhance my understanding and usage
    As a User
    I want to have easy access to comprehensive documentation about the system

    Scenario: Retrieve System Documentation
        Given I am a normal user
        When I navigate to documentation page
        Then I see a documentation about the system
