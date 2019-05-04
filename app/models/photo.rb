class Photo < ApplicationRecord
  belongs_to :seller
  belongs_to :category
  has_many :line_items

  has_one_attached :uploaded_image

  before_destroy :ensure_not_referenced_by_any_line_item

  private
# ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end
end
