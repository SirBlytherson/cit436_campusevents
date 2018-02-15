class Location < ApplicationRecord
    validates :name, :presence => true
    has_many :meetings
	
  def in_order
    order(start_time: :asc)
  end

  def recent(n)
    in_order.endmost(n)
  end

  def endmost(n)
    all.only(:order).from(all.reverse_order.limit(n), location)
  end
end
