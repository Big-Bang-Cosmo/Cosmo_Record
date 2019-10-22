class Admin::UsersController < ApplicationController
  def index
  	  @users = User.page(params[:page]).reverse_order
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
  end

  def destroy
  end



end
