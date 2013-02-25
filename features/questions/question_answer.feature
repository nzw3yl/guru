@javascript

Feature: Answer Question
  As a visitor to the website
  I want to answer a question

    Scenario: Visitor answers a question
      Given I am not signed in
      When I answer a question
      And my answer is correct
      Then I should see a correct answer message
      And I should be invited to sign up