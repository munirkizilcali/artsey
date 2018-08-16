class GeneSerializer < ActiveModel::Serializer
  attributes :id, :artsey_id, :name, :description, :thumbnail, :artworks_link, :artists_link
end
