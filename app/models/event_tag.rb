class EventTag < ActiveRecord::Base
  attr_accessible :tag
  
  has_many :events
  
  validates :tag, :presence => true
end
