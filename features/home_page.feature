Feature: Home page
  In order to view Homepage
  As an unregistered user
  I want to see the Homepage

  Scenario: Home page
    Given I am on Homepage
    Then I should be able to see "Hello World" printed on screen
