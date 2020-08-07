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

require 'test_helper'

class AgentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
