@wip
Feature: Administrators should be able to view all projects and students attached to those projects
  As an administrator,
  So I can track all our projects and progress,
  I want to be able to view all available projects and who is working on them 
  
Background: Users that exist and Projects that exist
    
  Given the following users exist:
  | first_name | last_name | email              | password  | user_type |
  | First      | Last      | email@berkeley.com | password  | admin     |
  | Second     | Last      | email1@berkeley.com| password1 | student   |
  | Third      | Last      | email2@berkeley.com| password2 | student   |
  
  Given the following projects exist:
  | project_name | company_name | company_contact    | students assigned | 
  | apple        | apple_time   | apple@berkeley.com | none              | 
  | strawberry   | rhubarb      | berry@berkeley.com | First Last        |
  
Scenario: viewing all projects available as admin
    Given I am logged in as an admin
    Given I am on the home page
    When I follow "Projects"
    Then I should see "Create Project Groups"
    Then I should see "All Projects"
    When I follow "All Projects"
    Then I should see "apple"
    Then I should see "strawberry"
    Then I should see "First Last"
    Then I should not see "Second Last"
    
Scenario: viewing all projects as a user
  Given I sign in with "email@berkeley.com" and "password"
  Given I am on the home page
  When I follow "projects"
  Then I should see "Create Project Groups"
  Then I should not see "All Projects"
  
