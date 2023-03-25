json.extract! cart, :id, :count, :product_id, :merchant_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
