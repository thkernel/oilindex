json.extract! sale_point, :id, :name, :status, :user_id, :created_at, :updated_at
json.url sale_point_url(sale_point, format: :json)
