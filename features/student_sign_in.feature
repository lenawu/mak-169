Feature: Students can sign in

	As a student
	So that I can log into a site account and work on projects
	I want to be able to sign in with my email and password

Background: User and Project Included on the Database

	Given the following users exist:
	| email              | password |
	| email@berkeley.com | password |
    | mail@berkeley.edu  | password |

	Given I am currently on the home page

Scenario: Signing in
  	Given I am on the home page
  	When I follow "Sign In"
	When I fill in "Email" with "email@berkeley.com"
	When I fill in "Password" with "password"
	And I press "Log in"
	Then I should be on the home page
	Then I should see "Log Out"
	Then I should see "Home"

Scenario: Signing out
  	Given I am on the home page
  	When I follow "Sign In"
  	When I fill in "Email" with "mail@berkeley.edu"
  	When I fill in "Password" with "password"
  	And I press "Log in"
	Then I am on the home page
	Then I should see "Log Out"
	Given I follow "Log Out"
	Then I am currently on the home page
	Then I should not see "Log Out"