class OrdersController < ApplicationController

  def index
    @orders = Order.where(buyer_id: current_buyer.id)
  end

  def create
    @orders = Order.where(buyer_id: current_buyer.id)
    @first_photo = @orders.first.line_items.first.photo.uploaded_image
    render :index
  end

  def show
    @order = Order.find(params[:id])
  end

end