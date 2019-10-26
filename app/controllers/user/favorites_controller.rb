class User::FavoritesController < ApplicationController
  def create
  	item = Item.find(params[:item_id])
    favorite = current_user.favorites.new(item_id: item.id)
    favorite.save
    redirect_to user_item_path(item.id)
  end
  def destroy
    item = Item.find(params[:item_id])
    favorite = current_user.favorites.find_by(item_id: item.id)
    favorite.destroy
    redirect_back fallback_location: request.referrer
  end
end
