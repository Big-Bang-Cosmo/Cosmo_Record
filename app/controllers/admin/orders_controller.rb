class Admin::OrdersController < ApplicationController
  def index
  	  @orders = Order.page(params[:page]).reverse_order
  end

#元は　bought_items
  def show
  end

  def day_bought_items
  end

  
end
