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

class Agent < ApplicationRecord
  belongs_to :sale_point
  belongs_to :user

  def full_name
  	"#{first_name} #{last_name}"
  end
end
