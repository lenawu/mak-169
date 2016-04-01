class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
  end
end

#added an admin attribute
#to identify administrators: if current_user.admin?
#if page could not have current_user then: if current_user.try(:admin?)
#to grant admin status to current user: current_user.update_attribute :admin, true