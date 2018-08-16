class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :hometown
      t.string :birthday
      t.string :death_day
      t.string :nationality
      t.string :image
      t.string :artworks
      t.string :similar_artists
      t.string :similar_contemporary_artists

      t.timestamps
    end
  end
end
