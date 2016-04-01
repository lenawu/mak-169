class AddRelationsToModels < ActiveRecord::Migration
  def change
    add_column :assignments, :project_id, :integer
    add_column :assignments, :user_id, :integer
    add_column :assignments, :source_id, :integer
    add_index :assignments, [:project_id, :user_id]
  end
end
