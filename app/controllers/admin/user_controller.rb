class Admin::UserController < ApplicationController
  def index
  	  @users = User.page(params[:page]).reverse_order
  end

  def delivery_index
  	  @user = User.find(params[:id])
  end

  def edit
  end
end
