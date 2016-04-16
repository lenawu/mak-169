
Feature: Students should be able to sign in to work on projects
  
  As a student,
  So that I can practice 3-d printing technology,
  I want to be able to view project specifications from real companies

Background: projects in database
  
  Given the following companies exist:
  | name               | email             | description        |
  | Cool Projects Inc. | coolp@gmail.com   | a cool description |
  | Elephant Inc.      | eleph@nt.com      | trunks 4 lyfe      |

  Given the following projects exist:
  | title           | company            | description      |
  | A Cool Project  | Cool Projects Inc. | Build me a thing |
  | Elephant        | Elephant Inc.      | Create elephants |

  Given the following users exist:
  | email               | password  |
	| email@berkeley.com  | password  |
  | email1@berkeley.com | password1 |

Scenario: I should be not able to see the projects if I am not signed in
  Given I am on the projects page
  Then I should not see "A Cool Project"
  Then I should not see "Elephant"
  Then I should see "Sign in to see your projects."

Scenario: I should be able to see the projects assigned to me
  Given I sign in with "email@berkeley.com" and "password"
  Given the user with email "email@berkeley.com" is assigned the project named "A Cool Project"
  Given I am on the projects index
  Then I should see "Your Projects"
  Then I should see "A Cool Project"

Scenario: I should not able to see projects that are not assigned to me
  Given I sign in with "email@berkeley.com" and "password"
  Given the user with email "email@berkeley.com" is assigned the project named "A Cool Project"
  Given I am on the projects index
  Then I should see "Your Projects"
  Then I should not see "Elephant"

Scenario: view a message if no projects have been assigned
  Given I sign in with "email1@berkeley.com" and "password1"
  Given I am on the projects index
  Then I should see "No projects have been assigned to you yet."
  Then I should not see "A Cool Project"
  Then I should not see "Elephant"