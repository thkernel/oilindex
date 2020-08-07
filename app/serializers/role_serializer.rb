# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoleSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
end
