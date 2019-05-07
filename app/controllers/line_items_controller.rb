class LineItemsController < ApplicationController


  def index
    @line_items = LineItem.where(buyer_id: current_buyer.id, complete: false)
    @total_amount = LineItem.total_price(current_buyer)
  end

  def create
    photo = Photo.find(params[:photo_id])
    @line_item = LineItem.new(photo: photo, buyer_id: current_buyer.id)
    
    if @line_item.save
      redirect_to line_items_path, notice: 'Successfully added to cart!'
    end
  end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to line_items_path, notice: 'Successfully deleted from cart!'
  end

  private

    def line_item_params
      params.require(:line_item).permit(:photo_id)
    end

end
