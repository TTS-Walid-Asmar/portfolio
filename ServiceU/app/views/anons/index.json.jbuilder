json.array!(@anons) do |anon|
  json.extract! anon, :id, :title, :body
  json.url anon_url(anon, format: :json)
end
