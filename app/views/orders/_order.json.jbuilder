json.extract! order, :id, :snack_id, :quantity, :client_id, :created_at, :updated_at
json.url order_url(order, format: :json)