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

class SalePoint < ApplicationRecord
  belongs_to :user
end
