class User::CartItemsController < ApplicationController
  def user_cart_items
    @user = User.find(params[:user_id])
  	@cart_items = @user.cart_item.all
  	@total_price = @cart_items.sum(:item_price)
  end



  def add_item
  	@item = Item.find(params[:id])
    @cart_item = current_user.cart_item.new(item_id: item.id)
    @cart_item.save
  end

  def create
  	@cart_item = CartItem.find
  	@cart_item.save
  	redirect_to user_cart_items_path
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

