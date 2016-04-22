@wip
Feature: Students should be able to view the bulletin board
    
    As a student,
    So that I can communicate with admins and companies,
    I want to be able to access the bulletin board.  
    
Background: Users exist
Given the following users exist:
    | email               | password  |
	| email@berkeley.com  | password  |

Scenario: There should be a bulletin board page
    Given I sign in with "email@berkeley.com" and "password"
    And I am on the home page
    When I follow "Bulletin Board"
    Then I should be on the bulletin board page
    
Scenario: Creating new posts and viewing posts
    Given I sign in with "email@berkeley.com" and "password"
    And I am on the bulletin board page
    Then I should see "Create post"
    When I follow "Create post"
    And fill in topic with "topic1"
    And fill in subject with "cool convo number 1"
    And I click "submit"
    Then I should be on the bulletin board page
    And I should see "topic1"
    When I follow "topic1"
    Then I should see "cool convo number1"

