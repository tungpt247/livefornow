Feature: Sign in
In order to
As a authorized user
I want to login into blog-site

  Background:
    Given I am authorized user
    And I am on login page

  Scenario: Sign in successfully
    When I fill in:
    | email    | tungphan@example.com |
    | password | password             |

    And I press "Log in" button
    Then I see "Signed in successfully."

  Scenario: Logged in
    When I fill in:
    | email    | tungphan@example.com |
    | password | password             |

    And I press "Log in" button
    And I am on login page
    Then The url should redirect to root
    And I see "You are already signed in."

  Scenario: No exsit email
    When I fill in:
    | email    | xxx@example.com |
    | password | password        |
    And I press "Log in" button
    Then I see "Invalid email or password."

  Scenario: Invalid password
    When I fill in:
    | email    | tungphan@example.com |
    | password | xxxxx                |
    And I press "Log in" button
    Then I see "Invalid email or password."
