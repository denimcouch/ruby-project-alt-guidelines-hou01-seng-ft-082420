class RemoveSongsFromAlbums < ActiveRecord::Migration[5.2]
    def change
        remove_column :albums, :song_id, :integer
    end
end