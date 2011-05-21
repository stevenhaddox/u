Feature: User wants to view a list of shortened URLs

  As a user
  I want to view a list of already shortened URLs
  In order to know which URLs have recently been shortened.

  Scenario: View list of shortened URLs
    Given the following links exist:
    | original               | title  |
    | http://google.com/?q=1 | Google |
    | http://google.com/?q=2 |        |
    And I am on the homepage
    And I follow "Recent Links"
    Then I should see "Recently Shortened uRLs"
    And I should see "http://google.com/?q=1 => a"
    And I should see "http://google.com/?q=2 => b"
