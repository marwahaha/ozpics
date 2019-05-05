class LineItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create, :destroy]

  def create
    photo = Photo.find(params[:photo_id])
    @line_item = @cart.line_items.build(photo: photo)
    if @line_item.save
      redirect_to @line_item.cart, notice: 'Successfully added to cart!'
    end
  end

  def destroy
    @line_item = @cart.line_items.find(params[:id])
    @line_item.destroy

    redirect_to @cart, notice: 'Successfully deleted from cart!'

  end

  private

    def line_item_params
      params.require(:line_item).permit(:photo_id)
    end

end
