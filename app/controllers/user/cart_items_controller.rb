class User::CartItemsController < ApplicationController
  def user_cart_item_list
    @user = User.find(params[:user_id])
  	@cart_items = @user.cart_items
  end

  def create
    @item = Item.find(params[:cart_item][:id])
    if @cart_item = CartItem.find_by(item_id: @item.id)
    @cart_item.quantity += 1
    @cart_item.save
    redirect_to user_user_cart_item_list_path(current_user.id)
    else
    @cart_item = current_user.cart_items.new(item_id: @item.id)
    @cart_item.quantity = 1
    @cart_item.save
    redirect_to user_user_cart_item_list_path(current_user.id)
  end
  end

  def update
  	@cart_item = CartItem.find(params[:id])
  	if cart_item.item.stock >= cart_item.quantity
    @cart_item.update(cart_item_params)
  	redirect_to user_user_cart_item_list_path(current_user.id)
  else
    @cart_item = CartItem.find(params[:id])
    render 'user/user_cart_item_list'


  end

  def destroy
  	@cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to user_user_cart_item_list_path(current_user.id)
  end
end

private
  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end
end
