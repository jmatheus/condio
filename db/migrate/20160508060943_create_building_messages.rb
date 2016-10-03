class CreateBuildingMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :building_messages do |t|
      t.references :user, foreign_key: true
      t.string :message_description

      t.timestamps
    end
  end
end
