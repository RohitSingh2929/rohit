json.extract! order, :id, :status, :cart_id, :product_id, :merchant_id, :created_at, :updated_at
json.url order_url(order, format: :json)
