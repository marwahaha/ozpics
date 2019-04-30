class SellerPageController < ApplicationController
  def index
    @seller = Seller.find(current_seller.id)
  end
end
