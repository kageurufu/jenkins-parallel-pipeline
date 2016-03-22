Feature: Tests 4
  Background:
    Given a test harness

  Scenario: Test 4.1
    When we do a thing
    And wait 4 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 4
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
