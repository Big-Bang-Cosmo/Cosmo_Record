class Order < ApplicationRecord
	belongs_to :user
	has_many  :order_items, dependent: :destroy
	accepts_nested_attributes_for :order_items, allow_destroy: true

	validates :delivery_adress, presence: :true
	validates :payment_methods, presence: :true

	acts_as_paranoid

end