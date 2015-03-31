Feature: Creating a post
  In order to create a post
  As a member of blog-site
  I want to publish a post

  Background:
    Given I am logged
    And I am on the post page

  @posts
  Scenario: Succesful publish post
    When I fill in "post[title]" with "My Title"
    And I fill in "post[description]" with "My description"
    And I press "Create Post" button
    Then I see "Post was successfully created."

  # @posts
  # Scenario: Empty title
  #   When I fill in "title" with ""
  #   And I fill in "description" with "My description"
  #   And I press "Create new post" button
  #   Then I should see "Can't blank title"
