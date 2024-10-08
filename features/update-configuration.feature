Feature: Update Configuration
    In order to optimize my coding experience
    As a Language Provider
    I want to easily customize the code's behavior through configuration settings

    Scenario: Update Supported Configuration
        Given I have a code with default configuration settings
        When I modify a supported configuration setting
        Then I see the configuration is changed
        And I see the changes are reflected in the code's behavior

    Scenario: Update Unsupported Configuration
        Given I have a code with default configuration settings
        When I modify an unsupported configuration setting
        Then I see the configuration remains unchanged
        And I see no effect is observed on the code
