class CreateWalkPoints < ActiveRecord::Migration
  def change
    create_table :walk_points do |t|
      t.integer :walk_id
      t.string :description
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end
end
