class User::UsersController < ApplicationController
  def new
  	  deliveries = Delivery.new(user_params)
  end

  def user_reviews
     @user = User.find(params[:id])
     @reviews = @user.reviews
  end

  def favorites
  	  @user = current_user
  	  @genres = Genre.all
      @items = @user.favorites.page(params[:page]).reverse_order
      @cart_item = CartItem.new

      @all_ranks = Item.create_all_ranks
  end


  def edit

  end
  def delete
    user = User.find(params[:id])
    user.update(deleted_at: Time.now)
    user.save
    redirect_to user_user_destroy_completed_path
  end

  def unsubscribe
  end

  def user_destroy_completed
  end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_ruby, :first_name_ruby, :email, :phone_number, deliveries_attributes: [:id, :delivery_postal_code, :delivery_address, :_destroy])
  end


end

