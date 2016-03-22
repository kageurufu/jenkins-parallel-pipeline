Feature: Tests 8
  Background:
    Given a test harness

  Scenario: Test 8.1
    When we do a thing
    And wait 8 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 8
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
