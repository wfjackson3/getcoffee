# == Schema Information
#
# Table name: events
#
#  id              :integer         not null, primary key
#  date            :datetime
#  address         :string(255)
#  city            :string(255)
#  state           :string(255)
#  event_type_id   :integer
#  event_status_id :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Event < ActiveRecord::Base
  attr_accessible :address, :city, :date, :state, :event_status_id, :event_type_id
  
  has_many :invites
  belongs_to :event_status
  belongs_to :event_type
end
