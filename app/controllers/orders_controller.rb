class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def create
    @order = Order.new(order_params)
    @order.add_line_items_from_cart(@cart)

    if @order.save
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      
      redirect_to root_path, notice: 'Thank you for your order.' 
    end
  end

  private
  def order_params
    params.permit(:cart_id)
  end
end
