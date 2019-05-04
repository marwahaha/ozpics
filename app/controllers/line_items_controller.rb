class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create]

  def create
    photo = Photo.find(params[:photo_id])
    @line_item = @cart.line_items.build(photo: photo)

    if @line_item.save
      redirect_to @line_item.cart, notice: 'Photo was successfully added to cart!'
    end
  end

  private

    def line_item_params
      params.require(:line_item).permit(:photo_id)
    end

end
