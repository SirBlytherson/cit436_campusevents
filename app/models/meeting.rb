class Meeting < ApplicationRecord
   validates :name, :start_time, :end_time, :presence => true
end
