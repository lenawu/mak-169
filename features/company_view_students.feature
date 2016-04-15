@wip
Feature: Company can View all of its Students

	As a company representative
	So I can determine which students work for me
	I want to view a page listing which students are associated with my project

Background: All Students in the Project Database

	Given the following users exist:
	| email              | password |
	| Make@company.com   | password |
	| Berkel@company.com | password |
	
	Given the folloiwng companies exist:
	| name   | email            | description |
	| Make   | Make@company.com | working     |
	| Berkel | Berkel@company.com | creating  |

	Given the following projects exist:
	| title | description     | spec_urls   | proj_id | user        |
	| Mak   | example project | oasidjf.com | 1       | Student One |
	| Mak   | example project | oasidjf.com | 1       | Student Two |
	
	Given the following users exist:
	| user_name   |
	| Student One |
	| Student Two |

	Given I am currently on the home page

Scenario: Company Representative for Make signing in
	Given I am on the home page
	When I follow "Sign In"
	Given I fill in "Email" with "Make@company.com"
	Given I fill in "Password" with "password"
	#Given I sign in with "Make@company.com" and "password"
	And I click on "Log in"
	Then I should be logged in

Scenario: Viewing all of company Make's students
	Given I am on the project page
	#When I click on "View_My_Students"
	#Then I should be on Make's Students
	Then I should see "Student One"
	Then I should see "Student Two"
	Then I should not see "Student Three"
	Then I should not see "Student Four"

#Scenario: Company Representative for Berkel signing in
	#Given I am on the home page
	#When I follow "Sign_In"
	#Given I sign in with "Berkel@company.com" and "password"
	#And I click on "login"
	#Then I should be logged in

#Scenario: Viewing all of company Berkel's students
	#Given I am the company "Berkel"
	#When I click on "View_My_Students"
	#Then I should be on the Berkel's Students
	#Then I should see "Student Three"
	#Then I should see "Student Five"
	#Then I should not see "Student One"
