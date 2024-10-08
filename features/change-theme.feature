Feature: Change Theme
    In order to enhance my visual experience
    As a User
    I want to personalize the system's appearance by changing the theme

    Scenario: Apply New Theme
        Given I am using the default theme
        When I change the system theme
        Then I see the system's appearance is updated to reflect the new theme

    Scenario: Restore Saved Theme
        Given I have previously changed the system theme
        When I reload the page
        Then I see the system automatically reverts to the previously saved theme
