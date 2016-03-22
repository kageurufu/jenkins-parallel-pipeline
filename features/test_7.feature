Feature: Tests 7
  Background:
    Given a test harness

  Scenario: Test 7.1
    When we do a thing
    And wait 7 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 7
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
