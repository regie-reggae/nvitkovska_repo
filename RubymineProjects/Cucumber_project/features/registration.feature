Feature: registration

  As an individual, I want to register on our awesome website

  Scenario: Positive registration
    Given On registration page
    When I submit valid data
    Then I am registered
