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
user4 = User.create! :email => 'allison@gmail.com', :password => 'password', :admin => 'false'

company1 = Company.create! :name => 'Google', :description => 'googling things', :email => 'google@google.com', :password => 'password'
company2 = Company.create! :name => 'Apple', :description => 'apple stuff', :email => 'apple@apple.com', :password => 'password'

project1 = Project.create! :title => 'youtube', :description => 'showing videos', :spec_urls => 'http://www.google.com/the_spec'
project2 = Project.create! :title => 'android', :description => 'operating systems', :spec_urls => 'http://www.google.com/the_other_spec'
project3 = Project.create! :title => 'iPhone', :description => 'making phones', :spec_urls => 'http://www.apple.com/iphone_spec'

company1.projects << project1
company1.projects << project2
company2.projects << project3

project1.users << user2
project1.users << user3