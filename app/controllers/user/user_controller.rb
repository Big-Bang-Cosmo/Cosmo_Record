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
  	  @user = current_user
  	  @genres = Genre.all
      @items = @user.items
  	  @favorites = Favorite.where(item_id: item.id)
  end

  def unsubscribe
  end


end

