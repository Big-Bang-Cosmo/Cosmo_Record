class User::OrderItemsController < ApplicationController


	def create
		user = current_user
		order_item = OrderItem.new(order_item_params)
		order_item.order_id = order.id
		order_item.save
		redirect_to user_order_item_completed_path
	end

	def update
    end

	def destroy

	private
	def order_item_params
	 	params.require(:order_item).permit(:user_id, :order_id, :item_name, :item_image, :artist_name, :quantity, :price)
	end

end
