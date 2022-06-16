class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.column :coordinate_x, :float, :null => false
      t.column :coordinate_y, :float, :null => false
      t.column :is_taken, :Boolean, :default => false

      t.timestamps
    end
  end
end
