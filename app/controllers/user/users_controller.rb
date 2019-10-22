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
  end


  def edit
      @user = User.find(params[:id])
  end

  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to admin_users_path
      else
        render :edit
      end
  end

  def destroy
      @user = User.find(params[:id])
      User.find(params[:id]).destroy
      redirect_to admin_users_path
  end

  # def unsubscribe
  # end

  # def user_destroy_completed
  # end

  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_ruby, :first_name_ruby,discs_attributes: [:id, ])
  end


end

