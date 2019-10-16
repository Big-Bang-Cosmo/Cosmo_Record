class User::CartItemsController < ApplicationController
  def user_cart_items
  	@cart_items = current_user.cart_item.where(item_id: item.id)
  	@total_price = @cart_items.sum(:item_price)
  end

  def show
    @tax_price = @item.price * 1.1
    @review = @Review.new
    redirect_to


  def add_item
  	@item = Item.find(params[:id])
    @cart_item = current_user.cart_item.new(item_id: item.id)
    @cart_item.save
  end

  def create
  	@cart_item = CartItem.find
  	@cart_item.save
  	redirect_to
  end

  def update
  	@cart_item = CartItem.find
  	@cart_item.update(quantity: params[:quantity].to_i)
  	redirect_to 

  end

  def destroy
  	@cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to user_cart_items_index_path
  end
end

