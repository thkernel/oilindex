class SalePointSerializer < ActiveModel::Serializer
  attributes :id, :name, :status
  has_one :user
end
