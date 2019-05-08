class Photo < ApplicationRecord
  validates :title, :description, :price, :uploaded_image, :category_id, presence: true
  validates :price, numericality: true

  belongs_to :seller
  belongs_to :category
  has_many :line_items

  has_one_attached :uploaded_image

  before_destroy :ensure_not_referenced_by_any_line_item

end
