class AddEmailAndRemoveUserId < ActiveRecord::Migration
  def change
    remove_column :messages, :user_id
    add_column :messages, :author, :string
  end
end
