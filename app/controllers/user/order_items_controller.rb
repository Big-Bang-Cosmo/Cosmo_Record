class User::OrderItemsController < ApplicationController
	def new
		@order_item = OrderItem.new
		@user = User.find(params[:id])
		@cart_item = CartItem.find_by(user_id: current_user.id)
		@shipping_fee = 500
	end

	def create

	end

	def update
	end

	def destroy
	end

end
