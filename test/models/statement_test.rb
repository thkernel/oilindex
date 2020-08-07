# == Schema Information
#
# Table name: statements
#
#  id                :bigint           not null, primary key
#  agent_id          :bigint
#  statement_type_id :bigint
#  product_id        :bigint
#  quantity          :float            default(0.0)
#  amount            :float            default(0.0)
#  statement_time    :datetime
#  status            :string
#  user_id           :bigint
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class StatementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
