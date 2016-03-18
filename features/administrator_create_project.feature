@wip
Feature: Administrator can create projects for students to do
  
  As an administrator
  So that I can have students collaborate on projects
  I want to be able to create projects given to me by clients
  
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
  
Scenario: Create a project with students
    Given I sign in with "email@berkeley.com" and "password"
    Given I am on the dashboard
    When I follow "Projects"
    Then I should see "Create Project Group"
    Then I fill in "Project" with "A Cool Project"
    Then I fill in "Company Name" with "CoolProjects.inc"
    Then I fill in "Student" with "Second Last"
    Then I follow "Submit"
    Then I should see "A Cool Project"
    When I follow "A Cool Project"
    Then I should see "Second Last"
