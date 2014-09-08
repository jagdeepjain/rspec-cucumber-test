Feature: Additon
  In order to avoid manual errors
  As an accountant
  I want addition of two numbers

  Scenario: Adding two given numbers
    Given I have entered 10 into the calculator
    And I have entered 10 into the calculator
    When I push add
    Then the result should be 20 on the screen
    
