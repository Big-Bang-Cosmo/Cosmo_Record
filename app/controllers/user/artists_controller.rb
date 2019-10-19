class User::ArtistsController < ApplicationController
  def show
  	@artist = Artist.find(params[:id])
  	@items = @artist.items.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user
  end
end