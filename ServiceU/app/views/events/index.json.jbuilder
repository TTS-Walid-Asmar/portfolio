json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :cost, :where, :start, :end, :user_id
  json.url event_url(event, format: :json)
end
