class Item < ApplicationRecord
	belongs_to :artist
	belongs_to :label
	belongs_to :genre
<<<<<<< HEAD
	has_many  :reviews, dependent: :destroy

=======

	has_many :discs, dependent: :destroy, inverse_of: :item
	accepts_nested_attributes_for :discs, allow_destroy: true

	attachment :item_image

	# validates :name,presence: :true
>>>>>>> 284b65cdeb98d5dc243488edc4849aa6ac4e85cb
end
