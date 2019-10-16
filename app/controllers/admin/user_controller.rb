class Admin::UserController < ApplicationController
  def index
  	  @users = User.page(params[:page]).reverse_order
  	  deliveries = Delivery.where(user_id: user.id)
  end

  def edit
  end
end
