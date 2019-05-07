class ChargesController < ApplicationController

  # after_action :clear_cart, only: [:create]
  
  def new
  end
  
  def create
    # Amount in cents
    @amount = params[:amount].to_i*100

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
    begin
      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'aud',
      })
    rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
    else
      @order = Order.new
      @order.line_items << LineItem.where(buyer_id: current_buyer.id, complete: false)
      @order.amount = @amount
      @order.buyer_id = current_buyer.id
      if @order.save
        LineItem.refresh
        @order.line_items.each do |item|
          item.complete = true
          item.save
        end
        render :create
      else
        redirect_to line_items_path
      end
    end 
  end
    
end



 # private
  #   def clear_cart
  #     @cart.destroy if @cart.id == session[:cart_id]
  #     session[:cart_id] = nil
  #   end