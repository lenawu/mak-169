class Company < ActiveRecord::Base
    
    has_many :projects
    
    def company_params
        params.require(:company).permit(:name, :email, :description)
    end
    
    def create
        @company = Company.new(company_params)
        @company.save
        redirect_to @company
    end
    
end
