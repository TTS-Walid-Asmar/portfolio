json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :title, :description, :condition, :price, :isbn, :user_id
  json.url inventory_url(inventory, format: :json)
end
