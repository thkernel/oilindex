json.extract! order_detail, :id, :uid, :order_id, :product_id, :price, :devise_code, :quantity, :status, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
