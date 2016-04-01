class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :spec_urls
      t.integer :proj_id

      t.timestamps null: false
    end
  end
end
