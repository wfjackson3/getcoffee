class Event < ActiveRecord::Base
  attr_accessible :address, :city, :date, :state, :status, :type
end
