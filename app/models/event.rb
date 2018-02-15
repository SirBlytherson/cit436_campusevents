class Event < ApplicationRecord
    validates :name, :start_date, :end_date, :presence => true
    validate :check_datetime_order
    has_and_belongs_to_many :sponsors
    has_many :meetings
    has_many :subscriptions
    has_many :attendees, :through => :subscriptions

  def check_datetime_order
    if start_date? && end_date? && end_date <= start_date
      errors.add(:unordered_dates, ": Start Date must be before End Date")
    end
  end
end
