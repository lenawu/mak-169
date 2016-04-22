@wip
Feature: Students should be able to view deadlines
    As a student,
    So that I can keep track of project progress,
    I want to be able to view a calendar of all upcoming deadlines
    
Background: student, company, and project exist
    Given the following students exist:
    | email             | password |
    | student@email.com | password |
    
    Given the following companies exist:
    | name | email          | description      |
    | CS   | CS@company.com | Computer Science |
    
    Given the following projects exist:
    | title | description     | spec_urls | company | students          | proj_id |
    | proj1 | example project | specs.com | CS      | student@email.com | 12      |
    
Scenario: student will add and view deadlines
    When I sign in with email "student@email.com" and password "password"
    Given I am on the user page
    Then I should see "proj1"
    When I press "add deadline"
    And I fill in "Description" with "add a table"
    And I fill in "Points" with "3"
    And I press "apply"
    Then I should see "add a table"
    Then I should see "3"
    Then I should see "Not finished"
    
Scenario: student will finish the deadline
    Given I am on the user page
    When I press "finish deadline"
    Then I should see "Finished"

    