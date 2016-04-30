Feature: Administrators should be able to add students to projects

  As an administrator,
  So that students can work on projects,
  I want to be able to assign students to projects

Background: admin and company exist
	Given the following users exist:
	| email               | password |
	| student1@school.com | password |
	| student2@school.com | password |
	| student3@school.com | password |
  Given the following admins exist:
	| email              | password |
	| email@admin.com    | password |
	Given the following companies exist:
	| name   | email             | description             | password    |
	| Google | google@google.com | googling things         | password    |
	Given the following projects exist:
	| title    | description     | spec_urls | company     |
	| loon     | future          | loon.com  | Google      |

Scenario: Company creates project
  # When I sign in as a company with email "google@google.com" and password "password"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"
  
  And the company with the name "Google" owns the project named "loon"
  
  Given I go to the projects page
  Then I should see "loon"
  Then I should see "None"

Scenario: Admin assigns student
  # When I sign in as a company with email "google@google.com" and password "password"
  Given the company with the name "Google" owns the project named "loon"

  Given I am on the home page
  When I follow "Sign In"
  When I fill in "user[email]" with "email@admin.com"
  When I fill in "user[password]" with "password"
  And I press "Log in"

  And I go to the projects page
  Then I should see "loon"
  When I follow "loon"
  Then I should see "Add"
  Then I should not see "Assigned"
  Given I press the first "Add"
  Then I should see "Assigned"

  And I follow "Log Out"
  # When I sign in as a company with email "google@google.com" and password "password"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"

  Given I go to the projects page
  Then I should not see "None"
  Then I should see "student1@school.com"
  Then I should not see "student2@school.com"
  Then I should not see "student3@school.com"