class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :genre_id
      t.integer :artist_id
      t.integer :song_id
    end
  end
end
