Feature: View Stats
  As a signed in user
  I want to see my scores and question counts
  so I can track my progress

    Scenario: Viewing stats
      Given I am logged in
      When I am on the homepage
      Then I should see my total score
