class ProductPhotosController < ApplicationController
  def index
    @product_photos = ProductPhoto.all
  end

  def show
    @product_photos = ProductPhoto.find(params[:id])
  end

  def create
    @product_photos = ProductPhoto.new(params[:product_photos])
    @product_photos.save
  end

  def new
    @product_photos = ProductPhoto.new
  end

  def destroy
    @product_photos = ProductPhoto.find(params[:id])
    @product_photos.destroy

    redirect_to product_photos_path
  end

  private

  def product_photos_params
    params.require(:product_photos).permit(:id_product)
  end
end
