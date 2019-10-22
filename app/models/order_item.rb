class OrderItem < ApplicationRecord
	belongs_to :order
	has_many :cart_items, through: :users
	has_many :deliveries, through: :users
end
