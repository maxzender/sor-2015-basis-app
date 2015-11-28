class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :title
      t.integer :year
      t.string :album_name

      t.timestamps null: false
    end
  end
end
