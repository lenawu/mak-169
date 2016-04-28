class AddReferencesToDeadlines < ActiveRecord::Migration
  def change
    add_reference :deadlines, :user, index: true, foreign_key: true
  end
end
