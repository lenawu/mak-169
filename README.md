
# Mak

Group project for CS 169 Spring 2016

![GPA](https://codeclimate.com/github/lenawu/mak-169/badges/gpa.svg)
![Coverage](https://codeclimate.com/github/lenawu/mak-169/badges/coverage.svg)
![Issue Count](https://codeclimate.com/github/lenawu/mak-169/badges/issue_count.svg)
  
[Travis-CI](https://travis-ci.org/lenawu/mak-169)
![Build Status](https://travis-ci.org/lenawu/mak-169.svg?branch=master)
  
[Pivotal Tracker](https://www.pivotaltracker.com/n/projects/1542641)

## Using Git
To make and submit changes:

1. Get up to date with master
```
git checkout master
git pull origin master
```
2. Create a local branch and make changes, push commits to GitHub on new branch if you want
```
git branch my-cool-changes
git checkout my-cool-changes
*** work work work ***
git commit -am "Did something cool"
git push origin my-cool-changes
*** work work work repeat. when done, ***
git fetch origin        # gets you up to date with origin
git merge origin/master
```
3. Go to GitHub and switch to your branch. Click "Submit new pull request".
4. If merge-able, Click "Create new pull request" or whatever.
5. Click a button again to go through with the merge. Then click "Delete branch"
6. Locally, delete your branch
```
git checkout master
git branch -d my-cool-changes
git pull origin master
```
