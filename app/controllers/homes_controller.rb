class HomesController < ApplicationController
  def index
    @photos = Photo.all.page(params[:page])
  end
end
