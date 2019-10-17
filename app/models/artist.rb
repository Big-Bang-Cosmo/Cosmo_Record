class Artist < ApplicationRecord
	has_many :items, dependent: :destroy

	validates :artist_name, uniqueness: :true
end
