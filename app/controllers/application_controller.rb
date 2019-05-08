class ApplicationController < ActionController::Base
  private

  def page_not_find
    render :file => 'public/404.html', :status => :not_found, :layout => false
  end
  
end
