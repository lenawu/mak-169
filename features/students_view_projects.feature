@wip
Feature: Students should be able to sign in to work on projects
  
    As a student,
    So that I can log into a site account and work on projects
    I want to be able to sign in with my email and password and see my projects

Background: projects in database

  Given the following projects exist:
  | title           | company            | description      |
  | A Cool Project  | Cool Projects Inc. | Build me a thing |
  | Elephant        | Elephant Inc.      | Create elephants |

  Given the following users exist:
  | first_name | last_name | email              | password
	| First      | Last      | email@berkeley.com | password
  | Second     | Last      | email1@berkeley.com| password1

Scenario: view a list of projects assigned to me
  Given I sign in with "email@berkeley.com" and "password"
  Given the project assigned to me is "A Cool Project"
  When I follow "My projects"
  Then I should see "A Cool Project"
  
Scenario: view a message if no projects have been assigned
  Given I sign in with "email1@berkeley.com" and "password"
  When I follow "My projects"
  Then I should see "No Projects Assigned"
