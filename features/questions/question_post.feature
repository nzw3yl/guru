Feature: Create Question
  As a registered user of the website
  I want to create a new question

    Scenario: I want to sign in and create a question
      Given I exist as a user
      When I create a new question
      Then I should see a new question successful message
      And I should see my question count increase