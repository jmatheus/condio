module HomeHelper

  def selected_location_name(location_id = nil)
    return BuildingLocation.find(location_id).name if location_id.present?
    "None"
  end

  def area_chart_reservations_series
    reservations_count_hash = Reservation.joins(:building_location).all.group(:name).count.to_h
    # [{"action_type"=>"DrawAction", "date"=>"01/12", "action_count"=>"2"},{"action_type"=>"SellAction", "date"=>"01/12", "action_count"=>"2"},...]

    reservations_count = reservations_count_hash.values.to_s.html_safe
    reservations_count
  end

end
