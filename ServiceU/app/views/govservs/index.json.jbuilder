json.array!(@govservs) do |govserv|
  json.extract! govserv, :id, :service
  json.url govserv_url(govserv, format: :json)
end
