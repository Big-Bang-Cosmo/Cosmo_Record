class User::ItemsController < ApplicationController


 def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @tax_price = @item.price * 1.1
    @review = Review.new
    @reviews = @item.reviews.page(params[:page]).reverse_order
 end

  def index
    @items = Item.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user

    @all_ranks = Item.create_all_ranks

  end

  def search
    @items = Item.search(params[:search])
    @genres = Genre.all
    @all_ranks = Item.create_all_ranks
  end
end


