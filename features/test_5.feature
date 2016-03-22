Feature: Tests 5
  Background:
    Given a test harness

  Scenario: Test 5.1
    When we do a thing
    And wait 5 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 5
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
