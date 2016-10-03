class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :due_month
      t.integer :status
      t.references :user, foreign_key: true
      t.decimal :value, :precision => 8, :scale => 2, default: 0 

      t.timestamps
    end
  end
end
