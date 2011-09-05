Feature: User wants to shorten a URL

  As a user
  I want to submit a long URL to be shortened
  In order to have a short URL for simple sharing.

  Background:
    Given I am on the homepage
    And I follow "Shorten Your Link!"
    Then I should see "Shorten a Link"

  Scenario: Submit a URL
    When I fill in "Link" with "http://rubyonrails.org"
    And I press "Shorten"
    Then I should see "Your shortened uRL is: "
    And I should see "uRL Info"
    And I should see "Original uRL"
    And I should see "Link Title"
    And I should see "Short uRL"

  Scenario: Submit an invalid URL
    When I fill in "Link" with "rubyrocks"
    And I press "Shorten"
    Then I should see "The following errors prevented us from shortening your link:"
    And I should see "Link to shorten"

  Scenario: Submit an existing URL
    And the following link exists:
    | original          | Title  |
    | http://google.com | Google |
    When I fill in "Link" with "http://google.com"
    And I press "Shorten"
    Then I should see "Link has already been created, here are it's details."
    And I should see "uRL Info"
    And I should see "Original uRL"
    And I should see "Link Title"
    And I should see "Short uRL"
    