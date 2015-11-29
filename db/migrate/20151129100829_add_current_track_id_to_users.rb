class AddCurrentTrackIdToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :current_track_id
    end
  end
end
