@wip
Feature: Administrators should be able to approve company project applications

  As an administrator,
  So that there will be projects available to choose from,
  I want to be able to approve company projects

Background: admin and company exist
  Given the following admins exist:
	| email              | password |
	| email@admin.com    | password |
	Given the following companies exist:
	| name   | email             | description             |
	| Google | google@google.com | googling things         |

Scenario: Company creates project
  When I sign in as a company with email "google@google.com" and password "password"
  Given I go to the projects page
  And I create a project:
  | title      | description       | company      |
  | foobar     | a cool proj       | Google       |
  Then I should see "foobar"
  Then I should see "Unapproved"
  Then I should not see "Approved"

Scenario: Admin approves project
  When I sign in as a company with email "google@google.com" and password "password"
  Given I go to the projects page
  And I create a project:
  | title      | description       | company      |
  | foobar     | a cool proj       | Google       |
  And I logout
  When I sign in as an admin with email "email@admin.com" and password "password"
  And I go to the dashboard
  Then I should see "Approve"
  Given I follow "Approve"
  And I logout
  When I sign in as a company with email "google@google.com" and password "password"
  Given I go to the projects page
  Then I should see "Approved"