class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description
  has_one :product_category
  has_one :user
end
