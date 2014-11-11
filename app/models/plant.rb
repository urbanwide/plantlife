class Plant < ActiveRecord::Base

  belongs_to :event

  # height, alive, token, name, startdate, email, event_id
  set_primary_key 'token'
  validates_uniqueness_of :token

  attr_accessible :height, :alive, :token, :name, :startdate, :email, :event_id

  validates_presence_of :token, :event_id, :height, :name, :startdate
  validates :name, :presence => true,
                   :length => {:minimum => 3, :maximum => 254}

  validates :email, :presence => true,
                    :length => {:minimum => 3, :maximum => 254},
                    :format => {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}


 before_save :default_values

 def as_json(options)
   super(:only => [:height, :alive, :token, :name, :startdate, :email, :event_id, :created_at])
 end

 protected

  def default_values
    self.alive ||= false
    true
  end

end
