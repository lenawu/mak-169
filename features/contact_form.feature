Feature: visitor should be able to send in inquiries through contact form
  
  As a visitor 
  So that I can contact the Mak staff
  I want to be able to submit a contact form to them with my name, email, and message
  
Background: Homepage and contact pages should exist
  Given I am on the home page
  When I follow "contact us"
  Then I should be on the contact page
  
Scenario: Contact page should have name, message, and message fields
  Given I am on the contact page
  Then I should see "Name"
  And I should see "Contact"
  And I should see "Message"
  
 Scenario: Filling out form and submitting should lead me to the Thank you page
   Given I am on the contact page
   When I fill in "Name" with "Pikachu"
   And I fill in "Email" with "attong@berkeley.edu"
   And I fill in "Message" with "Why is it raining?"
   And I press "Send message"
   Then I should be on the thank you page
   And I should see "Thank you for your message."
   
 Scenario: Submitting blank form
   Given I am on the contact page
   When I press "Send message"
   Then I should see "can't be blank"
   When I fill in "Name" with "name"
   And I fill in "Email" with "notemail"
   And I press "Send message"
   Then I should see "invalid"
  