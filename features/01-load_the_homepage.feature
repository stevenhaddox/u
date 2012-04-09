Feature: Visitor comes to the site

  As a visitor
  I want to find out about the site through different pages
  In order to decide if I'll shorten a URL. 

  Scenario: Load the homepage
    Given I am on the homepage
    Then I should see "Welcome to 'u'"
    And I should see "Short for uRL Shortener"
