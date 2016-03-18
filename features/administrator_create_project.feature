@wip
Feature: Administrators should be able to create new projects
  
  As an administrator,
  So that my students can view and work on projects,
  I want to be able to match company projects with students
  
Background: Users that exist
    
  Given the following users exist:
  | first_name | last_name | email              | password  | user_type |
	| First      | Last      | email@berkeley.com | password  | admin     |
  | Second     | Last      | email1@berkeley.com| password1 | student   |
  
Scenario: Create a new project as an Administrator
  Given I sign in with "email@berkeley.com" and "password"
  Given I am on the dashboard
  When I follow "New Project"
  Then I should see "Create New Project"
  Then I fill in "Project Name" with "A Cool Project"
  Then I fill in "Company" with "CoolProjects.inc"
  Then I fill in "Project Description" with "Making a super cool project"
  Then I follow "Submit"
  Then I should see "A Cool Project"
  Then I should see "CoolProjects.inc"
  
Scenario: Fail to create a project as a Student
  Given I sign in with "email1@berkeley.com" and "password1"
  Given I am on the dashboard
  When I follow "New Project"
  Then I should see "You are not authorized to create a new project"
