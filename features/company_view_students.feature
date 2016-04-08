@wip
Feature: Company can View all of its Students

	As a company representative
	So I can determine which students work for me
	I want to view a page listing which students are associated with my project

Background: All Students in the Project Database

	Given the following companies exist:
	| name   | email              | description |
	| Make   | Make@company.com   | working     |
	| Berkel | Berkel@company.com | creating    |

	Given the following project-student relationships exist
	| project_name | project_company | student_name  |
	| Mak          | Make            | Student One   |
	| Mak          | Make            | Student Two   |
	| UC           | Berkel          | Student Three |
	| Project      | Make            | Student Four  |
	| Assignment   | Berkel          | Student Five  |

	Given I am currently on the home page

Scenario: Company Representative for Make signing in
	Given I am on the home page
	When I follow "Sign_In"
	Given I sign in with "Make@company.com" and "password"
	And I click on "login"
	Then I should be logged in

Scenario: Viewing all of company Make's students
	Given I am the company "Make"
	When I click on "View_My_Students"
	Then I am currently on the company's students page
	Then I should see "Student One"
	Then I should see "Student Two"
	Then I should see "Student Four"
	Then I should not see "Student Three"

Scenario: Company Representative for Berkel signing in
	Given I am on the home page
	When I follow "Sign_In"
	Given I sign in with "Berkel@company.com" and "password"
	And I click on "login"
	Then I should be logged in

Scenario: Viewing all of company Berkel's students
	Given I am the company "Berkel"
	When I click on "View_My_Students"
	Then I am currently on the company's students page
	Then I should see "Student Three"
	Then I should see "Student Five"
	Then I should not see "Student One"
