class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.references :message, index: true, foreign_key: true
      t.string :author

      t.timestamps null: false
    end
  end
end
