class AddReservationNameToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :reservation_name, :string
  end
end
