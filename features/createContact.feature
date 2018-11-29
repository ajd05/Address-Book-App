Feature: Add a new contact
  
  As a Address Book User
  So that I can easily add contacts to my address book
  I want to be able to add a new contact entry
  
 Scenario: As a address book user I want to be able to navigate from home page to create contact form
   Given I am on the home page
   When I click on the "Create New Contact" button
   Then I should be on the "Add a New Contact" page
   And I should see the "name" field
   And I should see the "email" field
   And I should see the "phone" field
   And I should see the "address" field
   And I should see the "note" field