json.extract! post, :id, :title, :body, :tag, :created_at, :updated_at
json.url post_url(post, format: :json)
