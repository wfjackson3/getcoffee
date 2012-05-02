# == Schema Information
#
# Table name: invites
#
#  id               :integer         not null, primary key
#  invite_status_id :integer
#  position_id      :integer
#  event_id         :integer
#  created_at       :datetime        not null
#  updated_at       :datetime        not null
#

class Invite < ActiveRecord::Base
  attr_accessible :event_id, :position_id, :invite_status_id
  
  belongs_to :event
  belongs_to :position
  belongs_to :invite_statuses
  
  validates :position_id, :presence => true
  validates :event_id, :presence => true
end
