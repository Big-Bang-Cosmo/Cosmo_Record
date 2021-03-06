class Admin::OrdersController < ApplicationController
	before_action :authenticate_admin!

  def index
  	  @orders = Order.page(params[:page]).reverse_order
  end

	def update
		order = Order.find(params[:id])
		if  order.delivery_status == "商品準備中"
			order.delivery_status = "出荷済み"
			order.save
			redirect_to admin_bought_items_path(order.user.id)
		elsif order.delivery_status == "出荷済み"
			order.delivery_status = "商品準備中"
			order.save
			redirect_to admin_bought_items_path(order.user.id)
		end
	end

	def bought_items
		@user = User.find(params[:id])
		@orders = @user.orders.page(params[:page]).reverse_order
	end

	def day_bought_items
		@order = Order.find(params[:id])
		@orders = @order.order_items
	end

#元はbought_items
  def show
  end

end
