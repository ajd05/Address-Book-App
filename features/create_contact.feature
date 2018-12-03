# We are using a separate testing branch that doesn't have google authentication
# The separate branch was created and refactored to create users only using a 'Name' field
Feature: Add a new contact entry
  
  As a address book user
  So that I can easily contribute content to my address book
  I want to be able to add a new contact entry
  
Scenario: As a address book user I want to be able to create a new contact and see it appear on the homepage
    Given I am in the Add New User Page
    
    When I enter "Matt" field
      And I click on the "Create User" button
    Then I will click on "Users List" link
    
    When I'm in the "Contacts List" page
    Then I should see "Matt" name
    
Scenario: As a address book user I want to be able to view a contact that was created
    Given I am in the Add New User Page
    
    When I enter "Matt" field
      And I click on the "Create User" button
    Then I will click on "Users List" link
    
    Then I will click on "Show" link
      And I should see "Matt" name
    Then I will click on "Users List" link
    
      And I should see "Matt" name
      
      
Scenario: As a address book user I want to be able to edit a contact that was created
    Given I am in the Add New User Page
    
    When I enter "Matt" field
      And I click on the "Create User" button
    Then I will click on "Users List" link
    
    Then I will click on "Edit" link
      And I enter "Matthew" field
      And I click on the "Update User" button
    Then I will click on "Users List" link
    
    Then I should see "Matthew" name
    
    
Scenario: As a address book user I want to be able to delete a contact that was created
    Given I am in the Add New User Page
    
    When I enter "Matt" field
      And I click on the "Create User" button
    Then I will click on "Users List" link
    
    Then I will click on "Delete" link
    Then I should not see "Matt" name