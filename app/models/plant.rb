class Plant < ActiveRecord::Base

  belongs_to :event

  # height, alive, token, name, startdate, email, event_id
  set_primary_key :token
  validates_uniqueness_of :token

  attr_accessible :height, :alive, :token, :name, :startdate, :startdate_unix, :email, :event_id

  validates_presence_of :token, :event_id, :startdate

  validates :name, presence: true, length: { minimum: 3, maximum: 254 } 
  validates :email, allow_blank: true, length: { minimum: 3, maximum: 254 }, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  validates :height, presence: true, numericality: { only_integer: true }

  before_save :default_values

  def as_json(options)
    super(:only => [:height, :alive, :token, :name, :startdate, :email, :event_id, :created_at])
  end

  def startdate_unix= date
    self.startdate= Time.at(date.to_i)
  end

  protected

  def default_values
    self.alive ||= false
    true
  end

end
