class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.integer :artist_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
