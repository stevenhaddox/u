Feature: User wants to view a list of shortened URLs

  As a user
  I want to be redirected to a longer URL by visiting the shortened uRL
  In order to more easily get to my original destination.

  Scenario: Follow the shortened uRL
    Given the following links exist:
    | original          | title  | short |
    | http://google.com | Google | a     |
    And I am on the links page
    Then I should see "Recently Shortened uRLs"
    And I should see "http://google.com => a"
    And I follow "a"
    Then I should see "Google Search"

  Scenario: Follow the shortened uRL
    Given I visit "/fail"
    Then I should see "uRL Shortener"
    And I should see "The short uRL 'fail' does not exist."
