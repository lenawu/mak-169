
Feature: Students should be able to view deadlines
    As a student,
    So that I can keep track of project progress,
    I want to be able to view a calendar of all upcoming deadlines
    
Background: student, company, and project exist
    Given the following users exist:
    | email             | password |
    | student@email.com | password |
    
    Given the following companies exist:
    | name | email          | description      |
    | CS   | CS@company.com | Computer Science |
    
    Given the following projects exist:
    | title | description     | spec_urls | company | students          | proj_id |
    | proj1 | example project | specs.com | CS      | student@email.com | 12      |
    
Scenario: student will add and view deadlines
    Given I am on the home page
    #When I sign in with email "student@email.com" and password "password"
    #Given I am on the user page
    When I follow "Sign In"
    When I fill in "Email" with "student@email.com"
    When I fill in "Password" with "password"
    And I press "Log in"
    #Then I should see "proj1"
    #When I press "New Event"
    When I follow "Deadlines"
    Then I should see "The Deadlines"
    When I follow "Create Deadline"
    Then I should see "Create New Deadline"
    And I fill in "Title" with "Start"
    And I fill in "Start Date" with "Today"
    And I fill in "End Date" with "Tomorrow"
    And I fill in "Explanation" with "All"
    And I press "Save"
    Then I should see "Start"
    Then I should see "Today"
    Then I should see "Tomorrow"


    