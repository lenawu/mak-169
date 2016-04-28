Feature: Company Representatives can view projects
    As a company representative,
    So that I can monitor students progress
    I want to be able view what students have uploaded for our projects
    
Background: Company in the Database
  
    Given the following companies exist:
    | name | email            | description             | password   |
    | comp | comp@company.com | company that does this  | password   |
    
    Given the following projects exist:
    | title | description       | company     |  students    |
    | proj1 | example project   | comp        |  rob         |
     
    Given I am currently on the home page
    
Scenario: Company Representative signing in
    Given I am on the home page
    When I follow "Sign In"
    And I follow "Click here for companies"
    Given I fill in "Email" with "comp@company.com" 
    Given I fill in "Password" with "password"
    And I press "Log in"

Scenario: Company Representatives see list of projects
    Given I am on the home page
    Given the company with the name "comp" owns the project named "proj1"
    When I follow "Sign In"
    And I follow "Click here for companies"
    Given I fill in "company[email]" with "comp@company.com" 
    Given I fill in "company[password]" with "password"
    And I press "Log in"
    And I should see "Projects"
    When I follow "Projects"
	Then I should be on the projects index
    And I should see "proj1"
