class AddFirstnameToSellers < ActiveRecord::Migration[5.2]
  def change
    add_column :sellers, :firstname, :string
  end
end
