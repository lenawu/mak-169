# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create! :email => 'joe@gmail.com', :password => 'password', :admin => 'true'
user2 = User.create! :email => 'betsy@gmail.com', :password => 'password', :admin => 'false'
user3 = User.create! :email => 'rob@gmail.com', :password => 'password', :admin => 'false'

company1 = Company.create! :name => 'Google', :description => 'googling things', :email => 'google@google.com', :password => 'password'
company2 = Company.create! :name => 'Apple', :description => 'apple stuff', :email => 'apple@apple.com', :password => 'password'

project1 = Project.create! :title => 'youtube', :description => 'showing videos'
project2 = Project.create! :title => 'android', :description => 'operating systems'
project3 = Project.create! :title => 'iPhone', :description => 'making phones'

company1.projects << project1
company1.projects << project2
company2.projects << project3
