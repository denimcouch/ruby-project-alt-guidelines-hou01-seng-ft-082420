class AddAlbumsToPurchases < ActiveRecord::Migration[5.2]
    def change
        add_column :purchases, :album_id, :integer
    end
end