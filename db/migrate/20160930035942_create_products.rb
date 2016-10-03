class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.date :maintenance_date
      t.references :building_location, foreign_key: true

      t.timestamps
    end
  end
end
