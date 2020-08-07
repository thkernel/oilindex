# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  gender     :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender
  has_one :user
end
