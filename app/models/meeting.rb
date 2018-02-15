class Meeting < ApplicationRecord
    validates :name, :start_time, :end_time, :presence => true
    belongs_to :location
    belongs_to :event
end
