class AddAttrsToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :start_hour, :integer
    add_column :reservations, :end_hour, :integer
    add_column :reservations, :event_date, :date
    remove_column :reservations, :start_at, :datetime
    remove_column :reservations, :end_at, :datetime
    add_column :reservations, :guest_quantity, :integer, default: 0
  end
end
