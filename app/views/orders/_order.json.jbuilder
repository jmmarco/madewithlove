json.extract! order, :id, :patron_id, :meal_id, :quantity, :total_price, :destination_address, :delivery_time, :created_at, :updated_at
json.url order_url(order, format: :json)