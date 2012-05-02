# == Schema Information
#
# Table name: friends
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  twitter_handle :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Friend < ActiveRecord::Base
  attr_accessible :twitter_handle, :user_id
  
  has_many :positions
end
