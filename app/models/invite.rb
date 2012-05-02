# == Schema Information
#
# Table name: invites
#
#  id          :integer         not null, primary key
#  status      :integer
#  position_id :integer
#  event_id    :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Invite < ActiveRecord::Base
  attr_accessible :event_id, :position_id, :status
  
  belongs_to :event
  belongs_to :position
end
