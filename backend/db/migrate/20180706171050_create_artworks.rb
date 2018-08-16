class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :artsey_id
      t.string :title
      t.string :date
      t.string :category
      t.string :medium
      t.string :thumbnail
      t.string :image_large
      t.string :image_square
      t.integer :artist_id
      t.integer :gene_id

      t.timestamps
    end
  end
end
