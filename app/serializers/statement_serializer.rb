class StatementSerializer < ActiveModel::Serializer
  attributes :id, :statement_time, :status
  has_one :statement_type
  has_one :product
  has_one :user
end
