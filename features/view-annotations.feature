Feature: View Annotations
    In order to easily view and navigate to related code
    As a Language Provider
    I want to see a list of annotations indicating the number of references for each node's definition

    Scenario: Retrieve Node Annotations
        Given I have code with nodes and their references
        When I request a list of code lenses
        Then I receive a list of code lenses
        And I see code lens with number of references

    Scenario: Display Node References
        Given I have a code lens with a reference count greater than 0
        When I execute the code lens
        Then I receive a list of references of that node

    Scenario: Do Not Display Node References
        Given I have a code lens with a reference count of 0
        When I execute the code lens
        Then I do not receive a list of references of that node
