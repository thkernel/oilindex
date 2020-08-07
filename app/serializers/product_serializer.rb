# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  product_category_id :bigint
#  name                :string
#  price               :float
#  description         :text
#  user_id             :bigint
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description
  has_one :product_category
  has_one :user
end
