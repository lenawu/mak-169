@wip
Feature: visitors should see a helpful header
  
  As a site user,
  So that I can easily navigate the site,
  I want to be able to use a header to access various pages of the site.

Background: on the home page
  Given the following users exist:
    | first_name | last_name | email              | password
	  | First      | Last      | email@berkeley.edu | password
  Given I am on the home page

Scenario: links to see if I am signed in
  Given I sign in with "email@berkeley.edu" and "password"
  Then I should see "Sign out"
  Then I should see "My projects"

Scenario: links to see if I am signed out
  Given I am signed out
  Then I should see "Sign in"
  Then I should see "About"
