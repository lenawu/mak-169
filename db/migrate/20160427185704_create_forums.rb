class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :title
      t.references :project, foreign_key: true

      t.timestamps null: false
    end
  end
end
