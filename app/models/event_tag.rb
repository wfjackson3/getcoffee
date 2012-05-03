# == Schema Information
#
# Table name: event_tags
#
#  id         :integer         not null, primary key
#  tag        :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class EventTag < ActiveRecord::Base
  attr_accessible :tag
  
  has_many :events
  
  validates :tag, :presence => true
end
