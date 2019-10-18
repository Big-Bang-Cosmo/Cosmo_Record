class User::UserController < ApplicationController
  def new
  	  deliveries = Delivery.new(user_params)
  end

  def edit
  	  @user = User.find(params[:id])
  	  @delivery = Delivery.find(params[:id])
  	  # deliveries = Delivery.new(user_params)
  end

  def update
  	@user = User.find(params[:id])
  	@delivery = user.deliveries.find_by(user_id: user.id)
  	@delivery.update
  end

  def favorites
  end

  private
   def user_params
   		params.require(:user).permit(:last_name, :first_name, :last_name_ruby, :first_name_ruby, :gender, deliveries_attributes: [:id, :user_id, :delivery_postal_code, :delivery_address, :delivery_phone_number, :_destroy])
   end
end
