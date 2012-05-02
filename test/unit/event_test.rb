# == Schema Information
#
# Table name: events
#
#  id         :integer         not null, primary key
#  date       :datetime
#  address    :string(255)
#  city       :string(255)
#  state      :string(255)
#  type       :integer
#  status     :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
