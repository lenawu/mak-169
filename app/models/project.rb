# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  spec_urls   :string
#  proj_id     :integer
#  students    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  company_id  :integer
#  approved    :boolean          default(FALSE)
#

class Project < ActiveRecord::Base

	belongs_to :company
	
	has_many :assignments
	has_many :users, :through => :assignments
	has_one :forum

end
