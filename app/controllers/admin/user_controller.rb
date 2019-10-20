class Admin::UserController < ApplicationController
  def index
  	  @users = User.page(params[:page]).reverse_order
  end

  def user_reviews
  end

# 元は　delivery_index
  def show
  	  @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
