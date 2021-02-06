# likes_controller.rb

class LikesController < ApplicationController
  before_action :post_params

  def create
    #binding.pry
    if Like.create(user_id: current_user.id, post_id: params[:id])
      respond_to do |format|
        format.js
      end

    #redirect_back(fallback_location: root_path)
    else
        redirect_back(fallback_location: root_path)
    end
    #redirect_to posts_path
  end

  def destroy
    #binding.pry
    if Like.find_by(user_id: current_user.id, post_id: params[:id]).destroy
      respond_to do |format|
        format.js
      end
      
    else
      redirect_back(fallback_location: root_path)
    end
    #redirect_to posts_path
  end

  private

  def post_params
    @post = Post.find(params[:id])
  end
end