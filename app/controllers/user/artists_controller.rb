class ArtistsController < ApplicationController
  def artist_items
  	　@artist = Artist.find(params[:id])
  	　@items = @artist.items.page(params[:page]).reverse_order
     @favorite = Favorite.where(item_id: item.id)
     @user = current_user
  end
end
