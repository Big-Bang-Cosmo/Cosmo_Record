class User::OdersController < ApplicationController

	def show
		@order_item = Order_item.new
		@item =
		@total_price = order_item.cart_item.item.price
	end

end
