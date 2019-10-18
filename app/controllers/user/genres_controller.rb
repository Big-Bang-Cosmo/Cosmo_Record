class User::GenresController < ApplicationController
  def show
  	@genres_item = Genre.find(params[:id])
  	@items = @genres_item.items.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user
  end
end
