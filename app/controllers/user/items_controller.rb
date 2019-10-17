class User::ItemsController < ApplicationController


def show
    @item = Item.find(params[:id])
    @tax_price = @item.price * 1.1
    @review = Review.new
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


