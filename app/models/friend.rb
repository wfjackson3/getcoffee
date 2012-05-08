# == Schema Information
#
# Table name: friends
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  twitter_handle :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Friend < ActiveRecord::Base
  attr_accessible :twitter_handle, :user_id
  
  has_many :positions
  has_many :invites, :through => :positions
  
  validates :user_id, :presence => true
  validates :twitter_handle, :presence => true, :uniqueness => {:scope => :user_id}
  
  def time_since
    "#{(Time.now-self.positions.where(:archive=>true).order("updated_at").last.updated_at).to_i/60/60/24} days" unless self.positions.where(:archive=>true).order("updated_at").last.nil?
  end
end
