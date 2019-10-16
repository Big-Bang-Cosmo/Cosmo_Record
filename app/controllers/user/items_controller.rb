class User::ItemsController < ApplicationController


  def show
  	@item = Item.find(params[:id])
    @cart_item = current_user.cart_item.new
    @cart_item.item.id = @item.id
    @tax_price = @item.price * 1.1
    @review = @Review.new
  end

  def search
    @items = Item.search(params[:search])
  end
end


