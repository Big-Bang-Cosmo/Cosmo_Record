class User::OrdersController < ApplicationController
	def new
		@oder = Order.new
		@order_item = OrderItem.new
		@delivery = Delivery.where(active: true)
		@deliveries = current_user.deliveries.all
	    @cart_items = CartItem.where(active: true)
	    @cart_item = CartItem.find_by(user_id: current_user.id)
	    @order_item.shipping_fee = 500
		# @all_item_price += @cart_item.item.price * @cart_item.quantity.to_i * 1.1
		# @total_price = @all_item_price + @shipping_fee
	end

	def create
		@order = Order.new(order_params)
		@order.save
		redirect_to 
	end

	private

	def order_params
		params.require(:order).permit(:)
	end
end
