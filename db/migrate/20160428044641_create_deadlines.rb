class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.string :deadline_title
      t.string :start_date
      t.string :end_date
      t.string :explanation
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end
