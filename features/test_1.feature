Feature: Tests 1
  Background:
    Given a test harness

  Scenario: Test 1.1
    When we do a thing
    And wait 1 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 1
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
