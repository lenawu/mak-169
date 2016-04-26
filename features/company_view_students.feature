Feature: Company can View all of its Students

	As a company representative
	So I can determine which students work for me
	I want to view a page listing which students are associated with my project

Background: All Students in the Project Database

	Given the following users exist:
	| email              | password |
	| Make@company.com   | password |
	| Berkel@company.com | password |
	
	Given the following companies exist:
	| name   | email            | description | password |
	| Make   | Make@company.com | working     | password |
	| Berkel | Berkel@company.com | creating  | password |

	Given the following projects exist:
	| title | description     | spec_urls | company   | students      | proj_id |
	| Mak   | example project | spec1.com | Make      | Student One   | 10      |
	| Pop   | example project | spec2.com | Make      | Student Two   | 11      |
	| Car   | example project | spec3.com | Berkel    | Student Three | 12      |
	
	Given I am currently on the home page

Scenario: Company Representative for Make signing in
	Given I am on the home page
	When I follow "Sign In"
    And I follow "Click here for companies"
	Given I fill in "company[email]" with "Make@company.com"
	Given I fill in "company[password]" with "password"
	And I press "Log in"


Scenario: Viewing all of company Make's students
    Given I am on the home page
	Given the company with the name "Make" owns the project named "Mak"
	Given the company with the name "Make" owns the project named "Pop"
	Given the company with the name "Berkel" owns the project named "Car"
    When I follow "Sign In"
    And I follow "Click here for companies"
    Given I fill in "company[email]" with "Make@company.com" 
    Given I fill in "company[password]" with "password"
    And I press "Log in"
	Given I am on the projects index
	Then I should see "Student One"
	Then I should see "Student Two"
	Then I should not see "Student Three"
	Then I should see "spec1.com"
	Then I should see "10"

