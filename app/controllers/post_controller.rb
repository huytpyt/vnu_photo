class PostController < ApplicationController
  def show
    @post = Post.find_by(friend_url: params[:friend_url])
  end
end
