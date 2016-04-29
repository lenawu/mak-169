class AddForumsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :forums, :string
  end
end
