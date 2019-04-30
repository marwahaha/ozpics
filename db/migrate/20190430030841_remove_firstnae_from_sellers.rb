class RemoveFirstnaeFromSellers < ActiveRecord::Migration[5.2]
  def change
    remove_column :sellers, :firstnae, :string
  end
end
