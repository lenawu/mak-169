
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
	| name   | email            | description |
	| Make   | Make@company.com | working     |
	| Berkel | Berkel@company.com | creating  |

	Given the following projects exist:
	| title | description     | spec_urls   | proj_id | students    |
	| Mak   | example project | oasidjf.com | 1       | Student One |
	| Mak   | example project | oasidjf.com | 1       | Student Two |
	
	Given I am currently on the home page

Scenario: Company Representative for Make signing in
	Given I am on the home page
	When I follow "Sign In"
    And I follow "Click here for companies"
	Given I fill in "Email" with "Make@company.com"
	Given I fill in "Password" with "password"
	And I press "Log in"


Scenario: Viewing all of company Make's students
	Given I am on the home page
	When I follow "Projects"
	Then I should see "Student One"
	Then I should see "Student Two"
	Then I should not see "Student Three"
	Then I should not see "Student Four"

