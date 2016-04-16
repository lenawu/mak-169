# == Schema Information
#
# Table name: assignments
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer
#  user_id    :integer
#  source_id  :integer
#

class Assignment < ActiveRecord::Base
    belongs_to :project
    belongs_to :user
end
