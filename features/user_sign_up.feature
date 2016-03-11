@wip
Feature: New users should be able to sign up
  
    As a user
    So that I can access all of the site's functions
    I want to be able to create a new account

Background: some users exist already

  Given the following users exist
	  | first_name | last_name | email              | password
	  | Jane       | Doe       | email@berkeley.edu | password

Scenario: Signing up
	When I follow "Sign_Up"
	When I fill in the following:
    | first_name | last_name | email              | password
    | Jon        | Doe       | email@gmail.com    | password

	And I click "Sign_Up"
	Then I should see "Jon Doe"
	
Scenario: Email already exists
	When I follow "Sign_Up"
	When I fill in the following:
    | first_name | last_name | email              | password
    | First      | Last      | email@berkeley.edu | password

	And I click "Sign_Up"
	Then I should see "Error: Email has already been registered"
	
Scenario: Missing field
	When I follow "Sign_Up"
	When I fill in the following:
    | first_name | last_name | email              | password
    | First      | Last      |                    | password

	And I click "Sign_Up"
	Then I should see "Error: Please fill in the following fields: email"