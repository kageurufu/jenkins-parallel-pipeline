Feature: Tests 6
  Background:
    Given a test harness

  Scenario: Test 6.1
    When we do a thing
    And wait 6 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 6
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
