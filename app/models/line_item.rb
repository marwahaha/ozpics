class LineItem < ApplicationRecord  
  belongs_to :photo

  def self.total_price(buyer)
    line_items = LineItem.where(buyer_id: buyer.id)
    line_items.to_a.sum { |line_item| line_item.photo.price }
  end
end
