class User::OrderItemsController < ApplicationController
	def new
		@order_item = Order_item.new
		@deliveries = current_user.deliveries.all
		@cart_item = CartItem.find_by(user_id: current_user.id)
		@cart_items = @cart_item.all
		@shipping_fee = 500
		@total_price = @cart_item.quantity + @shipping_fee
	end

	def create

	end

	def update
	end

	def destroy
	end

end
