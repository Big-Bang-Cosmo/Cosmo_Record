class Admin::OrdersController < ApplicationController
  def index
  	  @orders = Order.page(params[:page]).reverse_order
  end

  def bought_items
  end

  def day_bought_items
  end
end