Feature: Visitors should be able to contact Mak
  
    As a visitor
	So that I can make contact with the organization
	I want to be able to submit an inquiry

Scenario: Signing up
	When I click "Contact_Us"
	When I fill in the following:
    | first_name | last_name | email              | message
    | Jon        | Doe       | email@gmail.com    | Hello, I am looking to...

	And I click "Send"
	Then I should see "Your message has been successfully sent"
	
Scenario: Missing field
	When I click "Contact_Us"
	When I fill in the following:
    | first_name | last_name | email              | message
    | Jon        |           | email@gmail.com    | Hello, I am looking to...

	And I click "Send"
	Then I should see "Error: Please fill in the following fields: last name"