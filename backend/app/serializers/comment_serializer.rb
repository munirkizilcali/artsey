class CommentSerializer < ActiveModel::Serializer
  attributes :id, :artsey_link, :username, :content
end