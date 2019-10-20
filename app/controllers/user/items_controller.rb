class User::ItemsController < ApplicationController


 def show
    @item = Item.find(params[:id])
    @user = User.find(params[:user_id])
    @cart_item = CartItem.new
    @tax_price = @item.price * 1.1
    @review = Review.new
    @reviews = @item.reviews
 end



 def index
    @items = Item.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user
  end

  def search
    @items = Item.search(params[:search])
  end
end


