class Photo < ApplicationRecord
  belongs_to :seller

  has_one_attached :uploaded_image
end
