class Project < ActiveRecord::Base

	belongs_to :company
	
	has_many :assignments
	has_many :users, :through => :assignments

	attr_accessor :title, :description, :spec_urls, :proj_id

end