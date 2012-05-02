# == Schema Information
#
# Table name: event_statuses
#
#  id         :integer         not null, primary key
#  status     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class EventStatus < ActiveRecord::Base
  attr_accessible :status
  
  has_many :events
end
