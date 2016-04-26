Feature: Visitors should be able to contact Mak
  
    As a visitor
	So that I can make contact with the organization
	I want to be able to submit an inquiry

Scenario: Signing up
    Given I am on the home page
    When I follow "Contact"
	#Then I fill in the following:
    #| Name          | Email              | Message
    #| Jon Doe       | email@gmail.com    | Hello, I am looking to...
    Then I fill in "Name" with "Jon Doe"
    Then I fill in "Email" with "email@gmail.com"
    Then I fill in "Message" with "Hello"
	And I press "Send message"
	Then I should see "Thank you for your message"
	
Scenario: Missing field
  	Given I am on the home page
  	When I follow "Contact"
	#When I fill in the following:
    #| Name | email              | message
    #|      | email@gmail.com    | Hello, I am looking to...
    Then I fill in "Email" with "email@gmail.com"
    Then I fill in "Message" with "Hello"
	And I press "Send message"
	Then I should see "can't be blank"