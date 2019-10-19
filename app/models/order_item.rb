class OrderItem < ApplicationRecord
	has_many :cart_items, through: :users
	has_many :deliveries, through: :users
end
