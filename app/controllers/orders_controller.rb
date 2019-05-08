class OrdersController < ApplicationController
  before_action :page_not_find, only: [:edit, :new]

  def edit
  end

  def new
  end

  def index    
    @orders = Order.where(buyer_id: current_buyer.id)
  end

  def create
    if current_buyer
      @orders = Order.where(buyer_id: current_buyer.id)
      @first_photo = @orders.first.line_items.first.photo.uploaded_image
      render :index
    else
      page_not_find
    end
  end

  def show
    if current_buyer
      @order = Order.find(params[:id])
    else
      page_not_find
    end
  end

end