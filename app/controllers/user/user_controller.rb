class User::UserController < ApplicationController
  def new
  	  deliveries = Delivery.new(user_params)
  end

  def edit
  	  @user = User.find(params[:id])
  	  # @delivery = Delivery.find(params[:id])
  	  # deliveries = Delivery.new(user_params)
  end

  def user_reviews
  end

  def favorites
  	  @user = User.find(params[:id])
  	  @items = @user.favorites.page(params[:page]).reverse_order
      @genres = Genre.all
      @user = current_user
  end

  def unsubsribe
  end

  def user_destroy_completed
  end


end
