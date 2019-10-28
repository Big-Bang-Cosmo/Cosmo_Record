class Admin::UsersController < ApplicationController

  def index
  	  @users = User.where(deleted_at: nil).page(params[:page]).reverse_order
  end

# 元は　delivery_index
  def show
  	  @user = User.find(params[:id])
  end

  def user_reviews
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to admin_users_path

  end

  def destroy
      @user = User.find(params[:id])
      User.find(params[:id]).destroy
      redirect_to admin_users_path
  end



  private
  def user_params
    params.require(:user).permit(:last_name, :first_name, :last_name_ruby, :first_name_ruby, :email, :phone_number, deliveries_attributes: [:id, :delivery_postal_code, :delivery_address, :_destroy])
  end

end

