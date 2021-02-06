# likes_controller.rb

class LikesController < ApplicationController
  before_action :post_params

  def create
    #binding.pry
    Like.create(user_id: current_user.id, post_id: params[:id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    #binding.pry
    Like.find_by(user_id: current_user.id, post_id: params[:id]).destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def post_params
    @post = Post.find(params[:id])
  end
end