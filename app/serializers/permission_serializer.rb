# == Schema Information
#
# Table name: permissions
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :status
end
