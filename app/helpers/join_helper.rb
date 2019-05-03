module JoinHelper

#buyer
  def buyer_resource_name
    :buyer
  end

  def buyer_resource
    @resource ||= Buyer.new
  end

  def buyer_resource_class
    Buyer
  end

  def buyer_devise_mapping
    @devise_mapping ||= Devise.mappings[:buyer]
  end

#seller
  def seller_resource_name
    :seller
  end
 
  def seller_resource
    @resource ||= Seller.new
  end

  def seller_resource_class
    Seller
  end
 
  def seller_devise_mapping
    @devise_mapping ||= Devise.mappings[:seller]
  end
end
