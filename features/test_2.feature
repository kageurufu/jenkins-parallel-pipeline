Feature: Tests 2
  Background:
    Given a test harness

  Scenario: Test 2.1
    When we do a thing
    And wait 2 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 2
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
