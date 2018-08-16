class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :hometown, :birthday, :death_day, :nationality, :image, :artworks, :similar_artists, :similar_contemporary_artists
end
