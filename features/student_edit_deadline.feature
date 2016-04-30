Feature: Students should be able to edit deadlines
    As a student,
    So that I can change part of my deadlines,
    I want to be able to modify the fields of my deadlines
    
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
    
Scenario: student will add and edit deadlines
    Given I am on the home page
    When I follow "Sign In"
    When I fill in "Email" with "student@email.com"
    When I fill in "Password" with "password"
    And I press "Log in"
    When I follow "Show My Deadlines"
    Then I should see "My Deadlines"
    When I follow "Create Deadline"
    Then I should see "Create New Deadline"
    And I fill in "Title" with "CS"
    And I fill in "Start Date" with "Yesterday"
    And I fill in "End Date" with "Tomorrow"
    And I fill in "Explanation" with "CSS"
    And I press "Save"
    Then I should see "CS"
    Then I should see "Yesterday"
    Then I should see "Tomorrow"
    Then I should see "CSS"
    
    Then I should see "Edit"
    Given I follow "Edit"
    And I fill in "Title" with "Mak"
    And I fill in "Start Date" with "January 1"
    And I fill in "End Date" with "January 2"
    And I fill in "Explanation" with "explain"
    And I press "Save"
    Then I follow "Deadlines"
    Then I should see "Mak"
    Then I should see "January 1"
    Then I should see "January 2"
    Then I should see "explain"
    Then I should not see "CS"
    Then I should not see "Yesterday"
    Then I should not see "Tomorrow"
    Then I should not see "CSS"