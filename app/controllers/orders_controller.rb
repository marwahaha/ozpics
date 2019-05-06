class OrdersController < ApplicationController

  def new
    redirect_to create_order_path
  end

  def show
    @order = LineItem.where(buyer_id: current_buyer.id)
    render :show
  end

  def create
    @order = Order.new
    @order.line_items << LineItem.where(buyer_id: current_buyer.id)

    if @order.save
      @amount = LineItem.total_price(current_buyer)
      render :create 
    end
  end

  private

  def order_params
    params.require(:order).permit(:cart_id)
  end

end