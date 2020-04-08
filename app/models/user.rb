class User < ApplicationRecord
  has_many :events, :foreign_key => :creator_id
  has_many :event_attendees, :foreign_key => :attendee_id

  has_many :attended_events, :through => :event_attendees

  def upcoming_events
    self.attended_events.upcoming
  end

  def previous_events
    self.attended_events.past
  end
end
