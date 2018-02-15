class Meeting < ApplicationRecord
    validates :name, :start_time, :end_time, :presence => true
    validate :check_datetime_order
    belongs_to :location
    belongs_to :event

  def check_datetime_order
    if start_time? && end_time? && end_time <= start_time
      errors.add(:unordered_dates, ": Start Date must be before End Date")
    end
  end
	
  def in_order
    order(start_time: :asc)
  end

  def recent(n)
    in_order.endmost(n)
  end

  def endmost(n)
    all.only(:order).from(all.reverse_order.limit(n), :location)
  end
end
