# == Schema Information
#
# Table name: product_categories
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :user
end
