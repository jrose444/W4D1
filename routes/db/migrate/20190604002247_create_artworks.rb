class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :image_url, null: false
      t.integer :artist_id
      t.timestamps
      
    end
    add_index :artworks, :artist_id
    add_index :artworks, :title, unique: {scope: :artist_id}
  end
end
