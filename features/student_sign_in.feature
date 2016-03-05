Feature: Students can sign in

	As a student
	So that I can log into a site account and work on projects
	I want to be able to sign in with my email and password

Background: User and Project Included on the Database

	Given it is currently Jan 1, 2016

	Given the following users exist
	| first_name | last_name | email              | password
	| First      | Last      | email@berkeley.com | password
    | Second     | Later     | mail@berkeley.edu  | password

	Given the following activities exist:
	| title | type    | release_time              | rate | user_id
	| proj  | project | 1/Jan/2016 23:59:59 -0800 | 5    | 1

	Given I am currently on the home page

Scenario: Signing in
	When I sign in with "email@berkeley.com" and "password"
	Given I am currently on the activities page
	Then I should see the following, First, Last, proj, project, rate
	Then I should not see the following Second, Later

Scenario: Signing out
	When I sign in with "email@berkeley.com" with "password"
	Then I should see "First Last"
	When I follow "Sign_Out"
	Then I should currently be on the sign_in page