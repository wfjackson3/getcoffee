# == Schema Information
#
# Table name: events
#
#  id              :integer         not null, primary key
#  date            :datetime
#  address         :string(255)
#  city            :string(255)
#  state           :string(255)
#  event_tag_id    :integer
#  event_status_id :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  latitude        :float
#  longitude       :float
#  gmaps           :boolean
#

class Event < ActiveRecord::Base
  attr_accessible :address, :city, :date, :state, :event_status_id, :event_tag_id
  
  has_many :invites
  belongs_to :event_status
  belongs_to :event_tag
  
  validates :address, :presence => true, :length => { :maximum => 100 }
  validates :city, :presence => true, :length => { :maximum => 25 }
  validates :state, :presence => true, :length => { :maximum => 2 }
  validates :date, :presence => true
  validates :event_status_id, :presence => true
  
  acts_as_gmappable
  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
    "#{self.address}, #{self.city}, #{self.state}"
  end
  
  def title
    "#{self.event_tag.tag} on #{self.date.strftime("%B %d at %I:%M %p")}"
    # If I update this later to include time zones
    # "#{self.event_tag.tag} on #{self.date.in_time_zone("Central Time (US & Canada)").strftime("%B %d at %I:%M %p")}"
  end
end
