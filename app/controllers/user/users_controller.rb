class User::UsersController < ApplicationController
  def new
  	  deliveries = Delivery.new(user_params)
  end

  def edit
  	  @user = User.find(params[:id])
  	  # @delivery = Delivery.find(params[:id])
  	  # deliveries = Delivery.new(user_params)
  end

  def update
      @user = User.find(params[:id])
      @user.update
  end

  def user_reviews
     @user = User.find(params[:id])
     @reviews = @user.reviews
  end

  def favorites
  	  @user = current_user
  	  @genres = Genre.all
      @items = @user.favorites.page(params[:page]).reverse_order
  end

  def unsubscribe
  end

  def usre_edit_params
    params.require(:book).permit(:title, :body)
  end


end

