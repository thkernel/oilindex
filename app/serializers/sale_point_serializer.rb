# == Schema Information
#
# Table name: sale_points
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SalePointSerializer < ActiveModel::Serializer
  attributes :id, :name, :status
  has_one :user
end
