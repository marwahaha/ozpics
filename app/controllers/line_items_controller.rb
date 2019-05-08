class LineItemsController < ApplicationController
  before_action :page_not_find, only: [:new, :show]
  
  def new
  end

  def show
  end

  def index
    if current_buyer
      @line_items = LineItem.where(buyer_id: current_buyer.id, complete: false)
      @total_amount = LineItem.total_price(current_buyer)
    else 
      page_not_find
    end
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

  def destroy_all
    @line_items = LineItem.where(buyer_id: current_buyer.id, complete: false)
    @line_items.each do |line_item|
      line_item.destroy
    end

    redirect_to line_items_path, notice: 'Cart is empty!'
  end

  private

    def line_item_params
      params.require(:line_item).permit(:photo_id)
    end

end
