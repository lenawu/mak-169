Feature: New users want to sign up as an administrator. NOTE: These tests seem simple, but since 
  we were using devise to do our authentication, figuring out the code was very complicated

    As a company
    So that I can access the company rep features of the site
    I want to be able to create a company rep account

Background: some users exist already
  Given the following users exist:
	| email              | password |
	| email@berkeley.edu | password |
	Given the following companies exist:
	| name   | email            | description             |
	| comp   | comp@company.com | company that does this  |
	| Google | googl@google.com | googling things         |
  Given I am on the home page
  
Scenario: Signing up as an admin with a new company
  When I follow "Sign Up"
  When I fill in the following:
    | user[email]    | steve.jobsies@apple.com                |
    | user[password] | applesfordayz                          |
    | user[password_confirmation] | applesfordayz             |
  When I fill in "company" with "Apple"
	When I fill in "name" with "Steve Jobs"                            
  When I fill in "profile" with "http://www.linkedin.com/in/steve_jobs"       
  And I press "Sign up"
  Then I should see "Welcome! You have signed up successfully. If you signed up as a company, we will move your account to company status as soon as your credentials are confirmed."
  
Scenario: New company credentials asked for
  When I follow "Sign Up"
  Then I should see "Please fill this in if you would like to register as a company. Your account will be created and achieve company status once your company credentials are confirmed!"
  
Scenario: Signing up as an admin but not filling out all company info. Emails can also be credentials to legitimize company accounts.
  When I follow "Sign Up"
  When I fill in the following:
    | user[email]    | stevie.jobsos@apple.com                  |
    | user[password] | apples4dayz                              |
    | user[password_confirmation] | apples4dayz                 |
  When I fill in "company" with "Apple"
	When I fill in "name" with ""                            
  When I fill in "profile" with ""
  And I press "Sign up"
  Then I should see "Welcome! You have signed up successfully. If you signed up as a company, we will move your account to company status as soon as your credentials are confirmed."
