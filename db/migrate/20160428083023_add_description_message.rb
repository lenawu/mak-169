class AddDescriptionMessage < ActiveRecord::Migration
  def change
    add_column :messages, :description, :string
  end
end
