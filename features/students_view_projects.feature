@wip
Feature: Students should be able to sign in to work on projects
  
  As a student,
  So that I can practice 3-d printing technology,
  I want to be able to view project specifications from real companies

Background: projects in database

  Given the following projects exist:
  | title           | company            | description      |
  | A Cool Project  | Cool Projects Inc. | Build me a thing |
  | Elephant        | Elephant Inc.      | Create elephants |

  Given the following users exist:
  | first_name | last_name | email              | password
	| First      | Last      | email@berkeley.com | password
  | Second     | Last      | email1@berkeley.com| password1

Scenario: should not be able to see projects if not signed in
  Given I am signed out
  Given I am on the home page
  Then I should not see "My projects"

Scenario: should have a link to projects list on home page
  Given I sign in with "email@berkeley.com" and "password"
  Given I am on the home page
  Then I should see "My projects"

Scenario: view a list of projects assigned to me
  Given I sign in with "email@berkeley.com" and "password"
  Given the project assigned to me is called "A Cool Project"
  When I am on the home page
  When I follow "My projects"
  Then I should see "A Cool Project"
  
Scenario: view a message if no projects have been assigned
  Given I sign in with "email1@berkeley.com" and "password"
  When I follow "My projects"
  Then I should see "No Projects Assigned"
  Then I should not see "A Cool Project"
