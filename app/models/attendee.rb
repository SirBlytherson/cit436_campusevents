class Attendee < ApplicationRecord
    validates :first_name, :last_name, :email => true
    has_many :subscriptions
    has_many :events, through :subscriptions
end
