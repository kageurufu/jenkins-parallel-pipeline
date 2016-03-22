Feature: Tests 3
  Background:
    Given a test harness

  Scenario: Test 3.1
    When we do a thing
    And wait 3 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 3
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
