Feature: User wants to view a list of shortened URLs

  As a user
  I want to be redirected to a longer URL by visiting the shortened uRL
  In order to more easily get to my original destination.

  Scenario: Follow the shortened uRL
    Given the following links exist:
    | original               | title  |
    | http://google.com/?q=1 | Google |
    And I am on the links page
    Then I should see "Recently Shortened uRLs"
    And I should see "http://google.com/?q=1 => a"
    And I follow "a"
    Then I should see "Google"
