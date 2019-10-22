class Admin::OrdersController < ApplicationController
  def index
  	  @orders = Order.page(params[:page]).reverse_order
  	  
  end

#元はbought_items
  def show
  end

  def day_bought_items
  	  @orders = Order.find(params[:id])
  end

  
end
