class AddMessageTitleToBuildingMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :building_messages, :message_title, :string
  end
end
