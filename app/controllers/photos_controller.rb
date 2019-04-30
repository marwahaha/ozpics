class PhotosController < ApplicationController
  def index
    @photos = Photo.all
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
      @photo = Photo.new
  end

  def show
      @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])
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
      params.permit(:title, :description, :price)
    end
end
