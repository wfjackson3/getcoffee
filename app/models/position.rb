# == Schema Information
#
# Table name: positions
#
#  id         :integer         not null, primary key
#  friend_id  :integer
#  archive    :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Position < ActiveRecord::Base
  attr_accessible :archive, :friend_id
  
  has_many :invites
  belongs_to :friend
end
