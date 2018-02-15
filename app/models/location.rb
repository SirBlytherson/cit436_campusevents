class Location < ApplicationRecord
    validates :name, :presence => true
    has_many :meetings
end
