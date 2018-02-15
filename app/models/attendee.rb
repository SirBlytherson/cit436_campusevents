class Attendee < ApplicationRecord
    validates :first_name, :last_name, :email, :required => true
    has_many :subscriptions
    has_many :events, :through => :subscriptions
end
