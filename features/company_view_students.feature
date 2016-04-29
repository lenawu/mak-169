Feature: Company can View all of its Students

	As a company representative
	So I can determine which students work for me
	I want to view a page listing which students are associated with my project

Background: All Students in the Project Database

	Given the following users exist:
	| email               | password |
	| student1@school.com | password |
	| student2@school.com | password |
	| student3@school.com | password |
	
	Given the following companies exist:
	| name   | email              | description | password |
	| Make   | Make@company.com   | working     | password |
	| Berkel | Berkel@company.com | creating    | password |

	Given the following projects exist:
	| title | description     | spec_urls | company   |
	| Mak   | example project | spec1.com | Make      |
	| Pop   | example project | spec2.com | Make      |
	| Car   | example project | spec3.com | Berkel    |
	
	Given I am currently on the home page

Scenario: Company Representative for Make signing in
	Given I am on the home page
	When I follow "Sign In"
    And I follow "Click here for companies"
	Given I fill in "company[email]" with "Make@company.com"
	Given I fill in "company[password]" with "password"
	And I press "Log in"
	Then I should be on the dashboard


Scenario: Viewing all of company Make's students
    Given I am on the home page
	Given the company with the name "Make" owns the project named "Mak"
	Given the company with the name "Make" owns the project named "Pop"
	Given the company with the name "Berkel" owns the project named "Car"
	Given the user with email "student1@school.com" is assigned the project named "Mak"
	Given the user with email "student2@school.com" is assigned the project named "Mak"
    When I follow "Sign In"
    And I follow "Click here for companies"
    Given I fill in "company[email]" with "Make@company.com" 
    Given I fill in "company[password]" with "password"
    And I press "Log in"
	Given I am on the projects index
	Then I should see "student1@school.com"
	Then I should see "student2@school.com"
	Then I should not see "student3@school.com"
	Then I should see "spec1.com"

