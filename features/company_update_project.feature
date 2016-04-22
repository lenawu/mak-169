@wip
Feature: Company representatives should be able to upload and update projects specs

  As a company representative,
  So that I can create projects for students
  I want to be able to upload project specifications to my account

Background: company exists
	Given the following companies exist:
	| name   | email             | description             |
	| Google | google@google.com | googling things         |
  Given the following projects exist:
  | title | description       | company     |  students    |
  | proj1 | example project   | Google      |  Steven      |

Scenario: company has edit access to project
  When I sign in as a company with email "google@google.com" and password "password"
  Given I go to the projects page
  Given I follow "edit"
  Then I should not be on the projects page
  Then I should see "proj1"

Scenario: company makes edit to project
  When I sign in as a company with email "google@google.com" and password "password"
  Given I go to the projects page
  Given I follow "edit"
  And I fill in "Spec URL" with "www.google.com"
  And I press "Save"
  Then I should see "www.google.com"
  
