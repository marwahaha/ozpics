class AddLineItemsToBuyer < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :buyer, foreign_key: true
  end
end
