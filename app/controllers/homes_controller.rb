class HomesController < ApplicationController
  def index
    @photos = (params[:author].present? && params[:author]!="all") ? Photo.where(author: params[:author]) : Photo.page(params[:page])
    @first_prize = Photo.where(prize: "Giải nhất").last
    @second_prizes = Photo.where(prize: "Giải nhì")
    @third_prizes = Photo.where("prize = 'Giải ba' or prize = 'Giải Ba' ")
  end
end
