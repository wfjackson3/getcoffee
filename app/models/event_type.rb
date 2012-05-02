# == Schema Information
#
# Table name: event_types
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class EventType < ActiveRecord::Base
  attr_accessible :type
  
  has_many :events
  
  validates :type, :presence => true
end
