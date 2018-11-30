Feature: Add a new contact entry
  
  As a address book user
  So that I can easily contribute content to my address book
  I want to be able to add a new contact entry
  
Scenario: As a address book user I want to be able to create a new contact and see it appear on the homepage
    Given I am on the main page
    When I click on the "My Users" link
    Then I should be on the "Contacts List" page
    When I click on the "Create New Contact" button
    Then I should be on the "Add a New User" page
    Then I enter "Matthew Frazier" into the "name" text field
    When I click on the "Create User" button
    Then I should see "Matthew Frazier"
    When I click on the "Users List" link
    Then I should be on the "Contacts List" page
    And I should see "Matthew Frazier"