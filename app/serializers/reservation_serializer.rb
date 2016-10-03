class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :event_date, :guest_quantity, :start_hour, :end_hour, :reservation_name
  # has_one :user
  has_one :building_location

  def event_date
    object.event_date.try(:strftime, "%d %b")
  end
end
