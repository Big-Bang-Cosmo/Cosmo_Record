class Delivery < ApplicationRecord
	belongs_to :user

	validates :delivery_postal_code, presence: :true
    validates :delivery_address, presence: :true
    validates :delivery_phone_number, presence: :true
end
