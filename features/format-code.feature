Feature: Format Code
    In order to improve code readability and consistency
    As a Language Provider
    I want to format code

    Scenario: Format Full Code
        Given I have a unformatted code
        When I request to format full code
        Then I see the code is formatted according to defined style guidelines

    Scenario: Format Selected Code
        Given I have a unformatted code with selected range
        When I request to format the selected code
        Then I see the selected code is formatted according to defined style guidelines
