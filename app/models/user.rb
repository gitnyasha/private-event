# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: :creator_id
  has_many :event_attendees, foreign_key: :attendee_id

  has_many :attended_events, through: :event_attendees

  def upcoming_events
    attended_events.upcoming
  end

  def previous_events
    attended_events.past
  end
end
