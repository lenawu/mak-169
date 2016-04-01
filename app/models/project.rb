Class Project < ActiveRecord::Base

#Depends on how admin position is given
#belongs_to :user, :flag => "admin"

	attr_accessor :title, :description, :spec_urls, :proj_id

	#before_action :authorize_admin :only => [:add_user]

		#The is_admin? should come from the user model
		#def authorize_admin
		#	current_user.is_admin?
		#end

	def title_change_to (string)
		self.title = string
	end

	def description_change_to (string)
		self.description = string
	end

	def spec_urls_change_to (strings)
		self.spec_url = strings
	end


		#find_by_sql is from ActiveRecord
		#Might need a project assignments model for this
		#def self.identify_by (user)
			#Project.find_by_sql("SELECT p.* FROM projects p INNER JOIN project_assignments pa ON (p.id = pa.pid) WHERE pa.user_id = #{user.id}")
		#end

		#def add_user(user)
			#if current_user(:admin?)
				#user.pid = self.proj_id
			#else
				#error
			#end
		#end

end