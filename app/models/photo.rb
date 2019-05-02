class Photo < ApplicationRecord
  belongs_to :seller
  belongs_to :category

  has_one_attached :uploaded_image
end
