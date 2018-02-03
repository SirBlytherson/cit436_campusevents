class Meeting < ApplicationRecord
   validates :name, :start_time, :end_time, :presence => true
   validate :check_datetime_order

  def check_datetime_order
    if start_date? && end_date? && end_date <= start_date
      errors.add(:unordered_dates, ": Start Date must be before End Date")
    end
  end
end