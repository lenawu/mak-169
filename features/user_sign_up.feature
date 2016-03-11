Feature: New users should be able to sign up
  
    As a user
    So that I can access all of the site's functions
    I want to be able to create a new account

Background: some users exist already
  Given the following users exist:
	| email              | password |
	| email@berkeley.edu | password |
  Given I am on the home page

Scenario: Signing in
  When I follow "Sign In"
  When I fill in the following:
	| user[email]       | email@berkeley.edu  |
	| user[password]    | password            |
  And I press "Log in"
  Then I should be on the home page
  Then I should not see "Sign In"
  Then I should not see "Sign Up"
  Then I should see "Log Out"

Scenario: Email already exists
  When I follow "Sign Up"
  When I fill in the following:
	| user[email]       | email@berkeley.edu  |
	| user[password]    | password            |
  And I press "Sign up"
	Then I should see "Email has already been taken"
	
Scenario: Missing field during a sign up
	When I follow "Sign Up"
  When I fill in the following:
	| user[email]       |                     |
	| user[password]    | password            |
	And I press "Sign up"
	Then I should see "Email can't be blank"

Scenario: Missing field during a sign in
	When I follow "Sign In"
  When I fill in the following:
	| user[email]       |                     |
	| user[password]    | password            |
	And I press "Log in"
	Then I should see "Invalid email or password"