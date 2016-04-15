Feature: Admins should be able to see a list of users
  
  As an admin,
  So that I can manage the users of the site,
  I want to be able to view a list of all of the users

Background: users in database
  
  Given the following users exist:
  | email               | password  |
  | email@berkeley.com  | password  |
  | email1@berkeley.com | password1 |
  
  Given I am on the users index

Scenario: I should be able to see all of the users
  Then I should see "email@berkeley.com"
  Then I should see "email1@berkeley.com"

Scenario: I should not be able to view passwords
  Then I should not see "password"
  Then I should not see "password1"