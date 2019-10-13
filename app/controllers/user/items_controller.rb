class User::ItemsController < ApplicationController
  def show
  	@item = Item.find(params[:id])
    @tax_price = @item.price * 1.1
    @artist = Artist.find(params[:artist_id])
    @genre = Genre.find(params[:genre_id])
    @label = Label.find(params[:label_id])
    @review = @Review.new
  end

  def search
  end
end
