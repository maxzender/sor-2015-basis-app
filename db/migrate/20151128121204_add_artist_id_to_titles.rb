class AddArtistIdToTitles < ActiveRecord::Migration
  def change
    change_table :titles do |t|
      t.integer :artist_id
    end
  end
end
