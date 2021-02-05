# user.rb

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts

  # 以下の1行を追記
  has_many :likes

  # user.rbに以下を追記

  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end
end