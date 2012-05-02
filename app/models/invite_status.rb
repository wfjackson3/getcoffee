# == Schema Information
#
# Table name: invite_statuses
#
#  id         :integer         not null, primary key
#  status     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class InviteStatus < ActiveRecord::Base
  attr_accessible :status
  
  has_many :invites
end
