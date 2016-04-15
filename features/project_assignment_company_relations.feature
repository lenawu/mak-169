@wip
Feature: companies, assignments, and projects should be able to be created
  
    As an administrator
    So that I manage my students and their projects
    I want to make sure that companies, assignments, and projects can be properly created and linked

Scenario: creating a company
    Given the following companies exist:
	| name               | email             | description    |
	| A Company Inc.     | company@gmail.com | a cool company |
  
Scenario: creating a project
    Given the following projects exist:
	| title              | description    | spec_urls  | proj_id   |
	| A Proj             | cool proj      | url_1      | 1         |
  
# Scenario: creating an assignment
#     Given the following assignments exist:
# 	| email              | password |
# 	| email@berkeley.edu | password |