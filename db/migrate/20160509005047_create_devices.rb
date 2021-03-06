class CreateDevices < ActiveRecord::Migration[5.0]
  def change
    create_table :devices do |t|
      t.string :name
      t.string :token
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
