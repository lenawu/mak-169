Feature: Administrators should be able to view all projects and students attached to those projects
  As an administrator,
  So I can track all our projects and progress,
  I want to be able to view all available projects and who is working on them 
  
Background: admin and company and projects exist
  Given the following admins exist:
	| email              | password |
	| email@admin.com    | password |
	Given the following companies exist:
	| name   | email             | description             | password    |
	| Google | google@google.com | googling things         | password    |
  Given the following projects exist:
  | title    | description   | company     |  students    |
  | foobar   | a cool proj   | Google      |  rob         |
  | elephant | animal love   | Yahoo       |  denise      |
Scenario: viewing all projects as admin
  Given I am on the home page
  When I follow "Sign In"
  When I fill in "user[email]" with "email@admin.com"
  When I fill in "user[password]" with "password"
  And I press "Log in"
  Then I should be on the home page
 
  And I go to the projects page
  Then I should see "foobar"
  Then I should see "a cool proj"
  Then I should see "elephant"
  Then I should see "rob"
  And I follow "Log Out"
    
Scenario: viewing all projects as a visitor
  Given I go to the projects page
  Then I should not see "foobar"
  Then I should not see "elephant"
  Then I should see "Sign in to see your projects"
  
