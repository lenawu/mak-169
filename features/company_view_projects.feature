@wip
Feature: Company Representatives can view projects
    As a company representative,
    So that I can monitor students progress
    I want to be able view what students have uploaded for our projects
    
Background: Company in the Database
  
    Given the following companies exist:
    | name | email            | description             |
    | comp | comp@company.com | company that does this  |
    
    Given "comp" has the following projects:
    | title | description       |  spec_url     | project_id    |
    | proj1 | example project   | oasidjf.com   | 1             |
    
     
    Given I am currently on the home page
    
Scenario: Company Representative signing in
    Given I am on the home page
    When I follow "Sign_In"
    Given I sign in with "comp@company.com" and "password"
    And I click on "login"
    Then I should be logged in
    
Scenario: Company Representatives see list of projects
    Given I am on the home page
    When I follow "Sign_In"
    Given I sign in with "comp@company.com" and "password"
    And I click on "login"
    Then I should be on Company Dashboard
    And I should see "Projects"
    And I should see "proj1"
