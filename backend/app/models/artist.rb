class Artist < ApplicationRecord
	has_many :artworks
	has_many :genes, through: :artworks
end
