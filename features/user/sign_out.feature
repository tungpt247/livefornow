Feature: Sign out
  In order to log out system
  As a role user
  I want sign out

  Scenario: Sign out
    Given I am logged in
    When I press sign out button
    Then redirect to Homepage
    And I see "Signed out successfully."
