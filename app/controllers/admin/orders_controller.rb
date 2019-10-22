class Admin::OrdersController < ApplicationController
  def index
  	  @users = User.orders.page(params[:page]).reverse_order
  	  
  end

#元は　bought_items
  def show
  end

  def day_bought_items
  	　　@user = User.find(params[:id])
  end

  
end
