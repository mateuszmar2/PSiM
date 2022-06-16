class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.column :cost, :float, :null => false
      t.column :is_paid, :Boolean, :default => false
      t.timestamps
    end
  end
end
