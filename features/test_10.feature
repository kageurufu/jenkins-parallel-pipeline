Feature: Tests 10
  Background:
    Given a test harness

  Scenario: Test 10.1
    When we do a thing
    And wait 10 seconds
    Then we should pass

  Scenario Outline: A basic outline test for 10
    When we do a thing
    And wait <time> seconds
    Then we should pass

    Examples:
      | time |
      | 5    |
      | 10   |
      | 15   |
