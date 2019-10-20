class User::OrderItemsController < ApplicationController


	def create
		@order_item = OrderItem.find(params[:id])
		@order_item.save
		redirect_to user_order_item_completed_path
	end

	def update
	end

	def destroy
	end

	def order_item_completed
	end

	private

	# def order_item_params
 #    	params.require(:order_item).permit(:payment_methods, :)
 #     end

end
