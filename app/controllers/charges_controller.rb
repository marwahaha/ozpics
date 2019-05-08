class ChargesController < ApplicationController  
  before_action :page_not_find, only: [:index, :new, :show]

  def index
  end
  
  def new 
  end

  def show    
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