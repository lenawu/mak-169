Feature: visitor should be able to go to static pages
  
    As a visitor
    So that I can learn more about the company 
    I want to be able to view different information about them

Scenario: home page should exist 
  Given I am on the home page 
  Then I should see "Home"

Scenario: home page should link to client
  Given I am on the home page
  When I follow "client"
  Then I should see "Info#client"

Scenario: home page should link to about 
  Given I am on the home page
  When I follow "who we are"
  Then I should see "About Us"
  
Scenario: home page should link to mentor
  Given I am on the home page
  When I follow "mentor"
  Then I should see "Info#mentor"
  
Scenario: home page should link to projects
  Given I am on the home page
  When I follow "projects"
  Then I should see "Info#projects"

Scenario: home page should link to student
  Given I am on the home page
  When I follow "student"
  Then I should see "Info#student"