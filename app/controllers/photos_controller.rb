class PhotosController < ApplicationController
  def index
    if params[:category].blank?
      @photos = Photo.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @photos = Photo.where(:category_id => @category_id).order("created_at DESC")
    end
  end

  def create
      @photo = Photo.new(photo_params)
      @photo.seller_id = current_seller.id
      if @photo.save
        redirect_to seller_page_path(current_seller.id)
        else
          render 'new'
        end
  end

  def new
    if current_seller
      @photo = Photo.new
      @categories = Category.all
    else
      page_not_find     
    end
  end

  def show
      @photo = Photo.find(params[:id])
  end

  def edit
    if current_seller
      @photo = Photo.find(params[:id])
      @categories = Category.all
    else
      page_not_find    
    end
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to @photo
    else
      render 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to seller_page_path(current_seller.id)
  end

  private
    def photo_params
      params.permit(:title, :description, :price, :uploaded_image, :category_id)
    end
end
