json.extract! post1, :id, :title, :user_id, :created_at, :updated_at
json.url post_url(post1, format: :json)
