class User::ItemsController < ApplicationController

<<<<<<< HEAD
def show
    @item = Item.find(params[:id])
    @tax_price = @item.price * 1.1
    @review = Review.new
end
=======
  def index
    @items = Item.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user
  end

  def show
  	@item = Item.find(params[:id])
    @tax_price = @item.price * 1.1
    @artist = Artist.find(params[:artist_id])
    @genre = Genre.find(params[:genre_id])
    @label = Label.find(params[:label_id])
    @review = Review.new
  end
>>>>>>> e6e8aacbea10f96f58836e2469bf66e131f916df

  def search
    @items = Item.search(params[:search])
  end
end


