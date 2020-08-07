# == Schema Information
#
# Table name: agents
#
#  id            :bigint           not null, primary key
#  uid           :string
#  first_name    :string
#  last_name     :string
#  gender        :string
#  sale_point_id :bigint
#  status        :string
#  user_id       :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class AgentSerializer < ActiveModel::Serializer
  attributes :id, :uid, :first_name, :last_name, :gender, :status
  has_one :sale_point
  has_one :user
end
