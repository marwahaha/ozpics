class AddCompleteToLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :complete, :boolean, default: false
  end
end
