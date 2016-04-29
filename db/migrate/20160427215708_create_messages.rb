class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.references :company
      t.references :forum

      t.timestamps null: false
    end
  end
end
