class Admin::ArrivalsController < ApplicationController

	def index
		@arrivals = Arrival.all
	end

	def new
		@item = Item.find(params[:item_id])
		@itemn = Item.new
		@arrival = Arrival.new
	end

	def create
		item = Item.find(params[:item_id])
		arrival = Arrival.new(arrival_params)
		arrival.item_id = item.id
		item.stock += arrival.arrival_quantity
		arrival.save
		redirect_to admin_arrivals_index_path
	end


private
	def arrival_params
		params.require(:arrival).permit(:arrival_quantity)
	end
end
