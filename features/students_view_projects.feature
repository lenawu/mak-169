
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

Scenario: I should be able to see all of the projects
    Given I am on the home page
    Given I follow "Projects"
    Then I should see "A Cool Project"

# Scenario: should not be able to see projects if not signed in
#   Given I am signed out
#   Given I am on the home page
#   Then I should not see "My projects"

# Scenario: should have a link to projects list on home page
#   Given I sign in with "email@berkeley.com" and "password"
#   Given I am on the home page
#   Then I should see "My projects"

# Scenario: view a list of projects assigned to me
#   Given I sign in with "email@berkeley.com" and "password"
#   Given the project assigned to me is called "A Cool Project"
#   When I am on the home page
#   When I follow "My projects"
#   Then I should see "A Cool Project"
  
# Scenario: view a message if no projects have been assigned
#   Given I sign in with "email1@berkeley.com" and "password"
#   When I follow "My projects"
#   Then I should see "No Projects Assigned"
#   Then I should not see "A Cool Project"
