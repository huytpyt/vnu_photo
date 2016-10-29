class GalleryController < ApplicationController
  def index
    @photos = (params[:author].present? && params[:author]!="all") ? Photo.where(author: params[:author]) : Photo.page(params[:page])
  end
  def show
    @photo = Photo.find(params[:id])
  end
end
