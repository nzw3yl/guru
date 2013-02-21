@javascript

Feature: Create Question
  As a registered user of the website
  I want to create a new question
  
  Background:

      Given I exist as a user
      And I sign in with valid credentials
    
    Scenario: Create a new question
      When I create a new question
      Then I should see a new question successful message
      And I should see my question count increase

    Scenario: Filter on my question tag
      When I visit the filtered page
      Then I should see my question