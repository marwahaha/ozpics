class AddFieldsToSellers < ActiveRecord::Migration[5.2]
  def change
    add_column :sellers, :firstnae, :string
    add_column :sellers, :lastname, :string
    add_column :sellers, :website, :string
  end
end
