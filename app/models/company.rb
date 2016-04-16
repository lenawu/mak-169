# == Schema Information
#
# Table name: companies
#
#  id          :integer          not null, primary key
#  name        :string
#  email       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Company < ActiveRecord::Base
    
    has_many :projects
    
    def company_params
        params.require(:company).permit(:name, :email, :description)
    end
    
end
