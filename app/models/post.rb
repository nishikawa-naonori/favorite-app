# post.rb

class Post < ApplicationRecord
  belongs_to :user

  # 以下の1行を追記
  has_many :likes
end