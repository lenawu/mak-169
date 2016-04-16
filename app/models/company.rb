class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    
    has_many :projects
    
    def company_params
        params.require(:company).permit(:name, :email, :description)
    end
    
end
