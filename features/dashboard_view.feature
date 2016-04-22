@wip
Feature: Users should have a dashboard
  
  As a user, 
  So that I can easily view everything that's related to me,
  I want to be able to visit a dashboard in which I can view my projects, messages, and anything else associated to me.

Background:
  Given the following users exist: 
  | email              | password  | admin |
  | email@berkeley.com | password  | true  |
  | 
Scenario: viewing the dashboard when I am signed in
  Given I am on the home page
  When I follow "Sign In"
  When I fill in "Email" with "email@berkeley.com"
  When I fill in "Password" with "password"
  And I press "Log In"
  Then I should be on the home page
  When I follow "dashboard"
  Then I should see "My Projects"
  Then I should see "Messages"
  
Scenario: viewing the dashboard when I am not signed in
  Given I am on the home page
  When I follow "dashboard"
  Then I should be on the home page
  