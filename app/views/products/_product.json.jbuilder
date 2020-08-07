json.extract! product, :id, :product_category_id, :name, :buying_price_xof, :buying_price_eur, :selling_price_xof, :selling_price_eur, :rate, :margin_xof, :margin_eur, :commission_xof, :commission_eur, :commission_stockholder, :description, :status, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
