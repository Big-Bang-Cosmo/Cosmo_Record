class User::OrdersController < ApplicationController
	def new
		@order = Order.new
		@order_item = OrderItem.new
		@user = current_user
		@delivery = Delivery.where(active: true)
		@deliveries = current_user.deliveries.all
	    @cart_items = CartItem.where(active: true)
	    @cart_item = CartItem.find_by(user_id: current_user.id)
	    @shipping_fee = 500
	end

	def create
		@order = Order.new(order_params)
		@order.save
		redirect_to user_order_completed_path
	end

#購入履歴一覧
	def index
	end
# 決済が完了しましたのページ
	def order_completed
	end

	def bought_items
	end

	def day_bought_items
	end


	private

	def order_params
	 	params.require(:order).permit(:total_price, :shipping_fee, :payment_methods)
	end

end
