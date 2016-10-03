class AddApartmentToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :apartment, :string
  end
end
