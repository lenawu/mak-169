Feature: visitors should see a helpful header
  
  As a site user,
  So that I can easily navigate the site,
  I want to be able to use a header to access various pages of the site.

Background: on the home page
  Given the following users exist:
    | email              | password |
	  | email@berkeley.edu | password |
  Given I am on the home page
  
Scenario: links to see before I am signed up
  Then I should see "Home"
  Then I should see "About Us"
  Then I should see "Contact"
  Given I follow "Sign Up"
  When I fill in "Email" with "email@berkeley.com"
  When I fill in "Password" with "password"
  When I fill in "Password confirmation" with "password"
  And I press "Sign up"
  Then I should see "Log Out"
  Given I follow "Log Out"
  Then I should not see "Log Out"

Scenario: links to see if I am signed in
  Given I am on the home page
  When I follow "Sign In"
  When I fill in "Email" with "email@berkeley.edu"
  When I fill in "Password" with "password"
  And I press "Log in"
  Then I should not see "Mak"
  Then I should see "Projects"
  Then I should see "About Us"
  Then I should see "Contact"
  Then I should see "Log Out"

Scenario: links to see if I am signed out
  Given I am on the home page
  Then I should see "Sign In"
  Then I should see "Sign Up"
  Then I should see "About Us"
  Then I should see "Contact"
  Then I should not see "Log Out"
  Then I should not see "Mak"
