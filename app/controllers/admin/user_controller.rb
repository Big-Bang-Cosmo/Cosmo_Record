class Admin::UserController < ApplicationController
  def index
  	  @users = User.page(params[:page]).reverse_order
  end

  def edit
  end
end
