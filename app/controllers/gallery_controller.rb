class GalleryController < ApplicationController
  def index
    @photos = Photo.page(params[:page])
  end
  def show
    @photo = Photo.find(params[:id])
  end
end
