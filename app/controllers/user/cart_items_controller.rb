class User::CartItemsController < ApplicationController
  def user_cart_items
  	@cart_items = current_user.cart_item.where(item_id: item.id)
  	@total_price = @cart_items.sum(:item_price)
  end

  def create
  	@cart_item = CartItem.find
  	@item.save
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

