class User::CartItemsController < ApplicationController
  def user_cart_item_list
    @user = User.find(params[:user_id])
  	@cart_items = @user.cart_items
  end

  def create
  	@item = Item.find(params[:cart_item][:id])
    @cart_item = current_user.cart_items.new(item_id: @item.id)
    @cart_item.save
    redirect_to user_cart_item_list_path(current_user.id)
  end

  def update
  	@cart_item = CartItem.find(params[:id])
  	@cart_item.update(quantity: params[:quantity])
  	redirect_to user_cart_item_list_path(current_user.id)

  end

  def destroy
  	@cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to  user_cart_items_path
  end
end

