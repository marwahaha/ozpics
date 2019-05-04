class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def total_price
    line_items.to_a.sum { |line_item| line_item.photo.price }
  end
end
