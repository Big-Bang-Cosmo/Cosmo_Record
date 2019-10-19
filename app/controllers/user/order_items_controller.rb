class User::OrderItemsController < ApplicationController
	def new
		@order_item = Order_item.new
		@deliveries = current_user.deliveries.all
		@cart_item = CartItem.find_by(user_id: current_user.id)
		@shipping_fee = 500
		@total_price = 
		# @total_price = order_item.cart_item.item.price
	end

	def create

	end

	def update
	end

	def destroy
	end

end
