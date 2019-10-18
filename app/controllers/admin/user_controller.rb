class Admin::UserController < ApplicationController
  def index
  	  @users = User.page(params[:page]).reverse_order
  	  deliveries = Delivery.find_by(user_id: user.id)
  end

  def edit
  end
end
