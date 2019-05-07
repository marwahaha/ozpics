class LineItem < ApplicationRecord  
  belongs_to :photo
  attr_accessor :amount
  @@amount = 0

  def self.refresh
   @@amount = 0
  end

  def self.show_amount
    @@amount
  end

  def self.total_price(buyer)
    line_items = LineItem.where(buyer_id: buyer.id, complete: false)
    @@amount = line_items.to_a.sum { |line_item| line_item.photo.price }
  end

end
