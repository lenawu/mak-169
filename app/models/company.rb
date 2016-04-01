class Company < ActiveRecord::Base
    
    # has_many :projects, dependent: :destroy
    
    has_many :projects
    
    
    #attribute :name,      :validate => true
    #attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
    #attribute :description
    
    def company_params
        params.require(:company).permit(:name, :email, :description)
    end
    
    def create
        @company = Company.new(company_params)
        @company.save
        redirect_to @company
    end
    
end
