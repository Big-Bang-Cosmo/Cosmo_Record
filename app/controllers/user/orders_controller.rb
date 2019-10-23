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
		@order.delivery_adress = delivery.delivery_address #その注文で選択した配送住所を特定し、Orderモデルに保存
		@order.delivery_postal_code = delivery.delivery_postal_code #その注文で選択した郵便番号を特定し、Orderモデルに保存
		@order.shipping_fee = 500 #送料の初期値を定義
		@order.total_price = 0 #注文の合計額の初期値を定義
		current_user.cart_items.each do |cart_item|
			@order.total_price += cart_item.item.price * cart_item.quantity.to_i * 1.1
		end #order.total_price(この時点で0。ここにカート内アイテムの値段Xカート内アイテムの個数をしたものを+する)
		@order.total_price += @order.shipping_fee

		if @order.save
			current_user.cart_items.each do |cart_item|
			@order_item = OrderItem.new(order_id: @order.id,item_id: cart_item.item_id, price: cart_item.item.price, quantity: cart_item.quantity)
			@order_item.save
			@order_item.item.update(stock: @order_item.item.stock - @order_item.quantity.to_i)
			#@order_item(購入する1種類の商品).item.stockで商品の現総在庫数を特定し、@order_itemの数量分を引き算する
			end
			current_user.cart_items.destroy_all #@orderがsaveできればカート内アイテムを削除
			redirect_to user_order_completed_path
		else
			render 'user/orders/new'
			# redirect_to user_orders_new_path(current_user.id)
		end
	end

#購入履歴一覧
	def index
		@user = current_user
		@orders = Order.page(params[:page]).reverse_order
	end
#購入履歴詳細
	def show
		@orders = Order.find(params[:id])
	end
# 決済が完了しましたのページ
	def order_completed
	end

	def bought_items
		@orders = Order.page(params[:page]).reverse_order
	end

<<<<<<< HEAD
	def day_bought_items
	end

=======
>>>>>>> c70feabe0f2fde146c3208f428d519fff8d2bf8c
	private
	def order_params
	 	params.require(:order).permit(:delivery_adress, :delivery_postal_code, :payment_methods, order_items_attributes: [:id, :_destroy])
	end
end
