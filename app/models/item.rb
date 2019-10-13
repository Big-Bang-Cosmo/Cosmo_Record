class Item < ApplicationRecord
	belongs_to :artist
	belongs_to :label
	belongs_to :genre

	has_many :discs, dependent: :destroy, inverse_of: :item
	accepts_nested_attributes_for :discs, allow_destroy: true

	attachment :item_image

	# validates :name,presence: :true
end
