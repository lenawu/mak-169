class FixForumsProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :forums, :string
    add_column :projects, :forum, :string
  end
end
