class User::OrderItemsController < ApplicationController
	def new
		@order_item = OrderItem.new
		@user = current_user
		@cart_item = CartItem.find_by(user_id: current_user.id)
		@shipping_fee = 500
	end

	def create
		@order_item = OrderItem.find(params[:order_item][:id])
		@order_item.save
		redirect_to user_order_item_completed_path
	end

	def update
	end

	def destroy
	end

	def order_item_completed
	end

end
