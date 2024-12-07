json.extract! order_main, :id, :user_id, :total, :status, :created_at, :updated_at
json.url order_main_url(order_main, format: :json)
