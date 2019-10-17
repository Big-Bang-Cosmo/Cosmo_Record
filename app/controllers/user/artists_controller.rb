class ArtistsController < ApplicationController
  def show
  	@artist = Artist.find(params[:aritist_id])
  	@items = artist.item.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user
  end
end