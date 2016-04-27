Feature: Administrators should be able to approve company project applications

  As an administrator,
  So that there will be projects available to choose from,
  I want to be able to approve company projects

Background: admin and company exist
  Given the following admins exist:
	| email              | password |
	| email@admin.com    | password |
	Given the following companies exist:
	| name   | email             | description             | password    |
	| Google | google@google.com | googling things         | password    |

Scenario: Company creates project
  # When I sign in as a company with email "google@google.com" and password "password"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"
  
  Then I should be on the home page
  Given the following projects exist:
  | title  | description   | company     |  students    |
  | foobar | a cool proj   | Google      |  rob         |
  And the company with the name "Google" owns the project named "foobar"
  Given I go to the projects page
  Then I should be on the projects index
  Then I should see "foobar"
  Then I should see "Pending"
  Then I should not see "Approved"

Scenario: Admin approves project
  # When I sign in as a company with email "google@google.com" and password "password"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"
  Then I should be on the home page

  Given the following projects exist:
  | title  | description   | company     |  students    |
  | foobar | a cool proj   | Google      |  rob         |
  And the company with the name "Google" owns the project named "foobar"
  Given I follow "Log Out"
  # When I sign in with email "email@admin.com" and password "password"

  Given I am on the home page
  When I follow "Sign In"
  When I fill in "user[email]" with "email@admin.com"
  When I fill in "user[password]" with "password"
  And I press "Log in"
  Then I should be on the home page

  And I go to the projects page
  Then I should see "Approve"
  Given I press "Approve"
  And I follow "Log Out"
  # When I sign in as a company with email "google@google.com" and password "password"
  Given I am on the home page
  When I follow "Sign In"
  And I follow "Click here for companies"
  Given I fill in "company[email]" with "google@google.com" 
  Given I fill in "company[password]" with "password"
  And I press "Log in"
  Then I should be on the home page

  Given I go to the projects page
  Then I should see "Approved"