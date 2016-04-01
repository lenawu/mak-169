class Company < ActiveRecord::Base
    
    has_many :projects
    
    def company_params
        params.require(:company).permit(:name, :email, :description)
    end
    
end
