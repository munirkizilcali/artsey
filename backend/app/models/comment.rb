class Comment < ApplicationRecord
	validates :artsey_link, :username, :content, presence: true
end
