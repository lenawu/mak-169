
Feature: Administrators should be able to view all projects and students attached to those projects
  As an administrator,
  So I can track all our projects and progress,
  I want to be able to view all available projects and who is working on them 
  
Background: Users that exist and Projects that exist
    
  Given the following users exist: 
  | email              | password  | admin |
  | email@berkeley.com | password  | true  |
  | email1@berkeley.com| password1 | true  |
  | email2@berkeley.com| password2 | false  |
  
  Given the following projects exist:
  | title          | description         | 
  | apple          | baking              | 
  | strawberry     | stirring            |                     
  
Scenario: viewing all projects available as admin
    Given I am on the home page
    When I follow "Sign In"
    When I fill in "Email" with "email@berkeley.com"
    When I fill in "Password" with "password"
    And I press "Log in"
    Then I should be on the home page
    When I follow "All Projects"
    Then I should see "Admin::Projects"
    Then I should see "title"
    Then I should see "description"
    Then I should see "apple"
    Then I should see "baking"

Scenario: viewing all projects as a non-admin
  Given I am on the home page
  When I follow "Sign In"
  When I fill in "Email" with "email1@berkeley.com"
  When I fill in "Password" with "password1"
  And I press "Log in"
  Then I should be on the home page  
  When I follow "All Projects"
  Then I am on the home page
  
Scenario: viewing all projects as a visitor
  Given I am on the home page
  When I follow "All Projects"
  Then I am on the home page
  
