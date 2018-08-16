class CreateGenes < ActiveRecord::Migration[5.2]
  def change
    create_table :genes do |t|
      t.string :artsey_id
      t.string :name
      t.string :description
      t.string :thumbnail
      t.string :artworks_link
      t.string :artists_link

      t.timestamps
    end
  end
end
