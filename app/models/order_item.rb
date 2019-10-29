class OrderItem < ApplicationRecord
	belongs_to :order
	belongs_to :item, -> { with_deleted }
	has_many :cart_items, through: :users
	has_many :deliveries, through: :users
end
