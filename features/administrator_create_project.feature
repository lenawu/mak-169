@wip
Feature: Administrator can create Student Projects

	As an administrator
	So that I can set up projects
	I want to be able to prepare them for student usage

Background: Administrator and Students on the Database

	Given the following users exist:
	| email             | password |
	| mail@berkeley.edu | password |
	| mail@berkeley.com | password |

	Given I am currently on the home page

Scenario: Administrator signing in
	Given I follow "Sign In"
	Given I sign in with "mail@berkeley.com" and "password"
	Then I press "Log in"

Scenario: Administrator setting up project
	Given I am on the dashboard
	When I follow "Create New Project"
	Then I should be on the create project page
	Then I fill in "Project Name" with "Student Project"
	Then I fill in "Project Description" with "Student Project"
	Then I press "Submit"
	Then I fill in "Student Name" with "Stud Ent"
	Then I press "Add Student"
	Then I should see "Stud Ent"

Scenario: Student unable to reach project creation page
  	Given I sign in with "student@email.com" and "password"
	Given I am on the dashboard
	When I follow "Create New Project"
	Then I should not see "Project Creation"

Scenario: Company unable to reach project creation page
  	Given I sign in with "company@email.com" and "password"
  	Given I am on the dashboard
  	When I follow "Create New Project"
  	Then I should not see "Project Creation"
  	
Scenario: Administrator-added Student can join Student Project
  	Given I sign in with "mail@berkeley.com" and "password"
  	Given I am on the dashboard
  	When I follow "Projects you can Join"
  	Then I should see "Student Project"