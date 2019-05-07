class PagesController < ApplicationController
  def search
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase     
      @results = Photo.find_by_sql("SELECT * FROM sellers INNER JOIN photos ON sellers.id = photos.seller_id ORDER BY photos.created_at desc")
    end 
  end
end
