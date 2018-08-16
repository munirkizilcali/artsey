class ArtworkSerializer < ActiveModel::Serializer
  attributes :id, :artsey_id, :title, :date, :category, :medium, :thumbnail, :image_large, :image_square, :artist, :gene

end
