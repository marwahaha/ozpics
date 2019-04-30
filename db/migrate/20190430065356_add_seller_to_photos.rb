class AddSellerToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_reference :photos, :seller, foreign_key: true
  end
end
