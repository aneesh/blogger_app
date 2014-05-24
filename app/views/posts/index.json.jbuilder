json.array!(@posts) do |post|
  json.extract! post, :id, :title, :contents, :published_at
  json.url post_url(post, format: :json)
end
