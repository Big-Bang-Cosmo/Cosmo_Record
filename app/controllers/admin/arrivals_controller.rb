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
		arrival = Arrival.new(arrival_params) #arrivalに空の変数を代入
		arrival.item_id = item.id #商品のidをarrivalと結びつける
		item.stock += arrival.arrival_quantity #itemのstockに入力されたarrival_quantityを+する
        Item.update(stock: item.stock) #itemのstockカラム(stock)に手に入れた情報(item.stock)を保存する
		arrival.save
		redirect_to admin_arrivals_index_path
	end

	def update
	end

	def destroy
	end


private
	def arrival_params
		params.require(:arrival).permit(:arrival_quantity)
	end
end
