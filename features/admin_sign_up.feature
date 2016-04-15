@wip

Feature: New users want to sign up as an administrator 

    As a company
    So that I can access the admin features of the site
    I want to be able to create an admin account

Background: some users exist already
  Given the following users exist:
	| email              | password |
	| email@berkeley.edu | password |
	Given the following companies exist:
	| name   | email            | description             |
	| comp   | comp@company.com | company that does this  |
	| Google | googl@google.com | googling things         |
  Given I am on the home page
  
Scenario: Signing up as an admin with a new company
  When I follow "Sign Up"
  When I fill in the following:
    | user[email]    | steve.jobs@apple.com                  |
    | user[password] | apples4dayz                           |
  	| user[company]  | Apple                                 |
	  | user[name]     | Steve Jobs                            |
    | user[profilel] | http://www.linkedin.com/in/steve_jobs |
  Then I should see "Thank you! Your account has been created and your admin access has been requested"
  
Scenario: Signing up as an admin with an existing company
  When I follow "Sign Up"
  When I fill in the following:
    | user[email]    | steve.jobs@apple.com                  |
    | user[password] | apples4dayz                           |
  	| user[company]  | Google                                |
	  | user[name]     | Steve Jobs                            |
    | user[profilel] | http://www.linkedin.com/in/steve_jobs |
  Then I should see "This company already exists in our database."
  
Scenario: Signing up as an admin but forgetting to fill out admin info
  When I follow "Sign Up"
  When I fill in the following:
    | user[email]    | steve.jobs@apple.com                  |
    | user[password] | apples4dayz                           |
  	| user[company]  |                                       |
	  | user[name]     |                                       |
    | user[profilel] |                                       |
  Then I should see "Please fill out admin info!"

