class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :spot, null: false, foreign_key: true
      t.column :reservation_start, :datetime, :null => false
      t.column :reservation_end, :datetime, :null => false

      t.timestamps
    end
  end
end
