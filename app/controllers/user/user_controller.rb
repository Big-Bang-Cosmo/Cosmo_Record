class User::UserController < ApplicationController
  def new
  	  deliveries = Delivery.new(user_params)
  end

  def edit
  	  @user = User.find(params[:id])
  	  # @delivery = Delivery.find(params[:id])
  	  # deliveries = Delivery.new(user_params)
  end

  def favorites
  	  @user = user.find(params[:id])
  	  @items = @user.items.page(params[:page]).reverse_order
      @genres = Genre.all
      @user = current_user
  end


end
