class Review < ApplicationRecord
	belongs_to :user
	belongs_to :item

	validates :review_body, presence: true, length: { maximum: 200 }
end
