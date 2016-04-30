Feature: Students should be able to view the bulletin board
    
    As a student,
    So that I can communicate with admins and companies,
    I want to be able to access the bulletin board.  
    
Background: Users exist
Given the following users exist:
    | email               | password  | id |
	| email@berkeley.com  | password1 | 1  |
Given the following forums exist:
    | title | id|
    | Forum1| 1 |
Given the following messages exist:
    | title | id | description           | forum_id| author             |
    | Hello | 1  |Just wanted to say hi  |1        | email@berkeley.com |
Given the following projects exist:
	| title           | description    | spec_urls  | proj_id   |
	| Forum1          | cool proj      | url_1      | 1         |
Given the following users, forums, messages, and projects are associated:
    |user_id | forum_id | message_id | project_id |
    | 1      | 1        |    1       |   1        |
Scenario: There should be a bulletin board page
  Given I am on the home page
  When I follow "Sign In"
  When I fill in "user[email]" with "email@berkeley.com"
  When I fill in "user[password]" with "password1"
  And I press "Log in"
  Given I am on the dashboard 
  Then I should see "Message Board"
  When I follow "Message Board"
  Then I should see "Message Board"
    
Scenario: Viewing Forums
    Given I sign in with "email@berkeley.com" and "password1"
    And I am on the messageboard
    Then I should see "Forum1"
    
Scenario: Viewing and Creating Messages
    Given I sign in with "email@berkeley.com" and "password1"
    And I am on the messageboard
    Then I should see "Forum1"
    When I follow "Forum1"
    Then I should see "Messages"
    And I should see "Create New Message"
    When I follow "Create New Message"
    Then I should be on the new message page
    When I fill in "Message Title" with "Hello Everybody"
    And I fill in "Description" with "this is the description"
    And I press "Create Message"
    Then I should see "Hello Everybody"
    And I should see "this is the description"

Scenario: Editing and Deleting Messages
    Given I sign in with "email@berkeley.com" and "password1"
    And I am on the messageboard
    When I follow "Forum1"
    Then I should see "Messages"
    And I should see "Hello"
    When I follow "Create New Message"
    Then I should be on the new message page
    When I fill in "Message Title" with "Hello Everybody"
    And I fill in "Description" with "this is the description"
    And I press "Create Message"
    Then I should see "Edit message"
    And I should see "Delete message"
    When I follow "Edit message"
    And I fill in "Message Title" with "Bye"
    And I fill in "Description" with "byebyeyeye"
    And I press "Update Message"
    Then I should see "Bye"
    And I should see "byebyeyeye"
    When I follow "Delete message"
    Then I am on the messageboard
    And I should not see "Bye"
    
Scenario: Creating Comments
    Given I sign in with "email@berkeley.com" and "password1"
    And I am on the messageboard
    When I follow "Forum1"
    When I follow "Hello"
    Then I should see "Comments"
    When I fill in "Comment" with "I volunteer to do this project"
    And I press "Create Comment"
    Then I should see "I volunteer to do this project"

Scenario: Editing and Deleting Comments
    Given I sign in with "email@berkeley.com" and "password1"
    And I am on the messageboard
    When I follow "Forum1"
    When I follow "Hello"
    Then I should see "Comments"
    When I fill in "Comment" with "I volunteer to do this project"
    And I press "Create Comment"
    Then I should see "I volunteer to do this project"
    And I should see "Edit"
    When I follow "Edit"
    Then I should see "Edit Comment"
    When I fill in "Comment" with "Jessica Alba"
    And I press "Update Comment"
    Then I should see "Jessica Alba"
    When I follow "Delete"
    Then I should see "No comments to display"
    