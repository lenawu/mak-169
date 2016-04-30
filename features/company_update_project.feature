Feature: Company representatives should be able to upload and update projects specs

  As a company representative,
  So that I can create projects for students
  I want to be able to upload project specifications to my account

Background: company exists
	Given the following companies exist:
	| name   | email             | description             | password   |
	| Google | google@google.com | googling things         | password   |
  Given the following projects exist:
  | title | description       | company     |  students    |
  | proj1 | example project   | Google      |  Steven      |

Scenario: company has edit access to project
  # When I sign in as a company with email "google@google.com" and password "password"
  Given the company with the name "Google" owns the project named "proj1"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"
  Given I am on the projects page
  Given I follow "Edit"
  Then I should see "Edit Project"

Scenario: company makes edit to project
  When I sign in as a company with email "google@google.com" and password "password"
  Given the company with the name "Google" owns the project named "proj1"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"
  Given I go to the projects page
  Given I follow "Edit"
  And I fill in "project[description]" with "example project"
  And I press "Save"
  And I am on the projects page
  Then I should see "example project"
  
