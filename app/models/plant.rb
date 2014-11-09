class Plant < ActiveRecord::Base

  # height, alive, token, name, startdate, email, event_id


  belongs_to :event
  attr_accessible :height, :alive, :token, :name, :startdate, :email, :event_id

  validates_presence_of :token, :event_id, :height, :name, :startdate
  validates_uniqueness_of :token
  validates :name, :presence => true,
                   :length => {:minimum => 3, :maximum => 254}

  validates :email, :presence => true,
                    :length => {:minimum => 3, :maximum => 254},
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}

end
