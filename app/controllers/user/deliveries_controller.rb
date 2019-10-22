class User::DeliveriesController < ApplicationController
	def index
		@deliveries = Delivery.all
	end

	def new
		@user = User.find_by(user_id: current_user.id)
		@delivery = Delivery.new
		@moji = "お届け先を登録する"
		@url = _path
	end

	def create
		@delivery = Delivery.new
		if @delivery.save
			redirect_to _path
		else
			render :new
		end
	end

	def edit
		@delivery = Delivery.find(params[:id])
		@moji = "お届け先を編集する"
		@url = _path
	end

	def update
		@delivery = Delivery.find(params[:id])
		if @delivery.update(delivery_params)
			redirect_to _path
		else
			render :edit
		end
	end

	def destroy
		@delivery = Delivery.find(params[:id])
		Delivery.find(params[:id]).destroy
		redirect_to _path
	end


	private
	def delivery_params
		params.require(:delivery).permit(:last_name, :first_name, :last_name_ruby, :first_name_ruby, :delivery_postal_code, :delivery_address, :delivery_phone_number)
	end


end
