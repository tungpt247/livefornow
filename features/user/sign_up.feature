Feature: Sign up
  In order to login to
  As a unauthorized user
  I want to signup with my details
  So that I can log in system

  Background:
    Given I am on the signup page

  Scenario: Sign up successfully
    When I fill in email with "user@example.com"
    And I fill in password with "password"
    And I fill in password confirmation with "password"
    And I press "Sign up" button
    Then I see "You have signed up successfully."

  # Scenario: Invalid email
  #   When I fill in email with "example.com"
  #   And I fill in password with "password"
  #   And I fill in password confirmation with "password"
  #   And I press "Sign up" button
  #   Then I see "Invalid email."

#   Scenario: Invalid password
#     When I fill in email with "example.com"
#     And I fill in password with "pass"
#     And I fill in password confirmation with "password"
#     And I press "Sign up" button
#     Then I see "Password must larger 8 character."

#   Scenario: Password doesn't match confirmation
#     When I fill in email with "user@example.com"
#     And I fill in password with "password"
#     And I fill in password confirmation with "passwordxx"
#     And I press "Sign up" button
#     Then I see "Password doesn't match confirmation"
