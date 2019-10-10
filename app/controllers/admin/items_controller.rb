class Admin::ItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit

  end

  def show
    @item = Item.find(params[:id])

  end

  def update
  end

  def destroy
  end

  def search
  end

  private
  def item_params
   params_require(:item).permit(:item_image, :price, :introduction), discs_attributes[:id, :item_id, :disc_number :drstroy, songs_attributes[:id, :disc_id, :song_title, :song_nuber]]
  end

end