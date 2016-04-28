Feature: Users should have a dashboard
  
  As a user, 
  So that I can easily view everything that's related to me,
  I want to be able to visit a dashboard in which I can view my projects, messages, and anything else associated to me.

Background:
  Given the following users exist: 
  | email              | password  | admin |
  | email@berkeley.com | password  | true  |
  | email1@berkeley.com | password1 | false |
  
Scenario: viewing the dashboard when I am signed in
  Given I am on the home page
  When I follow "Sign In"
  When I fill in "user[email]" with "email1@berkeley.com"
  When I fill in "user[password]" with "password1"
  And I press "Log in"
  Given I am on the dashboard 
  Then I should see "My Projects"

Scenario: viewing the dashboard when I am not signed in
  Given I am on the dashboard
  Then I should see "Sign in to see your dashboard"
  