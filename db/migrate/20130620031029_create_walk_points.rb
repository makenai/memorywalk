class CreateWalkPoints < ActiveRecord::Migration
  def change
    create_table :walk_points do |t|
      t.integer :walk_id
      t.string :location
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
