class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.string :name
      t.string :song_link

      t.timestamps
    end
  end
end
