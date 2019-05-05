class LineItem < ApplicationRecord  
  belongs_to :photo
  belongs_to :cart
  belongs_to :order, optional: true
end
