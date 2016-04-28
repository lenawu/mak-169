class RemoveCompanyFromMessage < ActiveRecord::Migration
  def change
    remove_column :messages, :company_id, :string
  end
end
