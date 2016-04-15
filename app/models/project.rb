class Project < ActiveRecord::Base

	belongs_to :company
	
	has_many :assignments
	has_many :users, :through => :assignments

end