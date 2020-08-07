class AgentSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :gender, :status
  has_one :sale_point
  has_one :user
end
