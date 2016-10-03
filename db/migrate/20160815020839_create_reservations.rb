class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.references :building_location, foreign_key: true

      t.timestamps
    end
  end
end
