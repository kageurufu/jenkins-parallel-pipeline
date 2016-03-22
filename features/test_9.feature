Feature: Tests 9
  Background:
    Given a test harness

  Scenario: Test 9.1
    When we do a thing
    And wait 9 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 9
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
