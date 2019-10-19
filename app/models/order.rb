class Order < ApplicationRecord
	belongs_to :user, through: :deliveries

end