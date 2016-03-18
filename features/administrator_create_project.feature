@wip
Feature: Administrator can create Student Projects

	As an administrator
	So that I can set up projects
	I want to be able to prepare them for student usage

Background: Administrator and Students on the Database

	Given the following users exist:
	| first_name | last_name | email             | password | user_type      |
	| First      | Last      | mail@berkeley.edu | password | student        |
	| Second     | Later     | mail@berkeley.com | password | student        |

	Given I am currently on the home page

Scenario: Administrator signing in
	Given I follow "Sign_In"
	Given I sign in with "email@email.com" and "password"
	When I click on “login” then I should be logged in

Scenario: Administrator setting up project
	Given I am on the dashboard
	When I follow "Create New Project"
	Then I should be on the create project page
	Then I fill in "Project Name" with "Student Project"
	Then I fill in "Project Description" with "Student Project"
	Then I follow "Submit"
	Then there should be no students on the project
	Given I follow "Add Student"
	Then I fill in "Student Name" with "Second Later"
	Then there should not be no students on the project

Scenario: Student unable to reach project creation page
  	Given I sign in with "student@email.com" and "password"
	Given I am on the dashboard
	When I follow "Create New Project"
	Then I should not be on the project creation page

Scenario: Company unable to reach project creation page
  	Given I sign in with "company@email.com" and "password"
  	Given I am on the dashboard
  	When I follow "Create New Project"
  	Then I should not be on the project creation page
  	
Scenario: Administrator-added Student can join Student Project
  	Given I sign in with "mail@berkeley.com" and "password"
  	Given I am on the dashboard
  	When I follow "Projects you can Join"
  	Then I should see "Student Project"