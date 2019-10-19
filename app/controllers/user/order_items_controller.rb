class User::OrderItemsController < ApplicationController
	def show
		@order_item = Order_item.new
		@delivery = Delivery.find(prams[:])
		@deliveries = current_user.deliveries.all
		# @total_price = order_item.cart_item.item.price
	end

end
