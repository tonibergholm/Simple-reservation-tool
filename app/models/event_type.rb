class EventType < ActiveRecord::Base
  attr_accessible :name, :duration, :color, :location, :description
  has_many :events
end
