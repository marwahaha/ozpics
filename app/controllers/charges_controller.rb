class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart
  after_action :clear_cart, only: [:create]
  
  def new
  end
  
  def create
    # Amount in cents
    @amount = params[:amount].to_i*100

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'aud',
    })
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private
    def clear_cart
      @cart.destroy if @cart.id == session[:cart_id]
      session[:cart_id] = nil
    end
end
