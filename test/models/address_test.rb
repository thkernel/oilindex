# == Schema Information
#
# Table name: addresses
#
#  id               :bigint           not null, primary key
#  address          :string
#  city             :string
#  country          :string
#  email            :string
#  po_box           :string
#  addressable_type :string
#  addressable_id   :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
