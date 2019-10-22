class User::OrdersController < ApplicationController
	def new
		@order = Order.new
		@order_item = OrderItem.new
		@deliveries = current_user.deliveries.all
	    @cart_item = CartItem.find_by(user_id: current_user.id)
	    @shipping_fee = 500
	    @user_cart_items = current_user.cart_items
	    @total_price = 0
	    
	    @user_cart_items.each do |cart_item|
	    @total_price += cart_item.item.price * cart_item.quantity.to_i * 1.1
		end
	end

	def create
		@order = Order.new(order_params)
		@order.user_id = current_user.id
		delivery = Delivery.find(order_params[:delivery_adress])
		@order.delivery_adress = delivery.delivery_address
		@order.delivery_postal_code = delivery.delivery_postal_code
		@order.shipping_fee = 500
		@order.total_price = 0
		current_user.cart_items.each do |cart_item|
		@order.total_price += cart_item.item.price * cart_item.quantity.to_i * 1.1
		end
		@order.total_price += @order.shipping_fee

		if @order.save
			current_user.cart_items.each do |cart_item|

			@order_item = OrderItem.new(order_id: @order.id,item_id: cart_item.item_id, price: cart_item.item.price, quantity: cart_item.quantity)
			@order_item.save
			@order_item.save
			end

			current_user.cart_items.destroy_all
			redirect_to user_order_completed_path
			end
		else
			render 'user/orders/new'
			# redirect_to user_orders_new_path(current_user.id)
		end
	end

#購入履歴一覧
	def index
		@users = User.orders.page(params[:page]).reverse_order
	end
#購入履歴詳細
	def show
		@order = Order.find(params[:id])
	end
# 決済が完了しましたのページ
	def order_completed
	end

	def bought_items
		@orders = Order.all
	end
	
	

	def day_bought_items
	end


	private
	def order_params
	 	params.require(:order).permit(:delivery_adress, :delivery_postal_code, :payment_methods, order_items_attributes: [:id, :_destroy])
	end

end
