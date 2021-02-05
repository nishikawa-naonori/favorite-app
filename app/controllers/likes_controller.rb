# likes_controller.rb

class LikesController < ApplicationController
  before_action :post_params

  def create
    #binding.pry
    Like.create(user_id: current_user.id, post_id: params[:id])
  end

  def destroy
    #binding.pry
    Like.find_by(user_id: current_user.id, post_id: params[:id]).destroy
  end

  private

  def post_params
    @post = Post.find(params[:id])
    @post1 = Post.find(params[:id])
  end
end