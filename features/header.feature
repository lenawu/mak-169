Feature: visitors should see a helpful header
  
  As a site user,
  So that I can easily navigate the site,
  I want to be able to use a header to access various pages of the site.

Background: on the home page
  Given the following users exist:
    | email              | password
	  | email@berkeley.edu | password
  Given I am on the home page

Scenario: links to see if I am signed in
  Given I sign in with "email@berkeley.edu" and "password"
  Then I am on the home page
  Then I should see "Home"
  Then I should see "Projects"
  Then I should see "All Projects"
  Then I should see "About Us"

Scenario: links to see if I am signed out
  Given I am on the home page
  Then I should see "Sign In"
  Then I should see "Sign Up"
  Then I should see "Projects"
  Then I should see "All Projects"
  Then I should see "About Us"
  Then I should see "Contact"
  Then I should not see "Log Out"
  Then I should not see "Mak"
