rspec-cucumber-test
===================

Sample code for BDD based on Rspec and cucumber

requirements
============
```
gem install rspec
gem install cucumber
gem install rake
```

test execution
==============
```
rake cucumber
```
or
```
cucumber features/calculate.feature
```

result
======
```
Feature: Additon
  In order to avoid manual errors
  As an accountant
  I want addition of two numbers

  Scenario: Adding two given numbers            # features/calculate.feature:6
    Given I have entered 10 into the calculator # features/step_definitions/calculate_steps.rb:16
    And I have entered 10 into the calculator   # features/step_definitions/calculate_steps.rb:16
    When I push add                             # features/step_definitions/calculate_steps.rb:20
    Then the result should be 20 on the screen  # features/step_definitions/calculate_steps.rb:24

1 scenario (1 passed)
4 steps (4 passed)
0m0.003s
```
