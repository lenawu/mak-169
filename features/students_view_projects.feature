@wip
Feature: students can view projects assigned to them
  
    As a student
    So that I can practice 3-d printing technology,
    I want to be able to view project specifications from real companies

Background: projects in database

  Given the following projects exist:
  | title           | company            | description      |
  | A Cool Project  | Cool Projects Inc. | Build me a thing |

Scenario: view a list of projects assigned to me
  Given that I am signed up as a student
  Given the project "A Cool Project" is assigned to me
  And  I follow "My projects"
  Then I should see "A Cool Project"
