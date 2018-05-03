# Sparta Mobile Testing

Testing mobile applications with Appium.

## Quickstart

Make sure you have Appium v1.2.3 and Android Studio set up to run these tests.

```
Clone repository 

https://github.com/cjoshua15/SpartaMobileTesting.git

and on the root in the terminal type cucumber to run the test
```

## Test result example
```Cucumber
Feature: I am able to add a budget
  As user I am able to add a budget

  Scenario: I am able to open the app # features/add_a_budget.feature:4
    Given I can open the app          # features/step_definitions/add_a_budget_step_defs.rb:1
    When click on budget              # features/step_definitions/add_a_budget_step_defs.rb:5
    Then the budget page opens        # features/step_definitions/add_a_budget_step_defs.rb:9

  Scenario: I am able to add a budget # features/add_a_budget.feature:9
    Given I can open the app          # features/step_definitions/add_a_budget_step_defs.rb:1
    When I enter a budget             # features/step_definitions/add_a_budget_step_defs.rb:13
    And save the budget               # features/step_definitions/add_a_budget_step_defs.rb:19
    Then the budget is saved          # features/step_definitions/add_a_budget_step_defs.rb:23
    And can be seen on the homepage   # features/step_definitions/add_a_budget_step_defs.rb:27

2 scenarios (2 passed)
8 steps (8 passed)
0m50.733s
```