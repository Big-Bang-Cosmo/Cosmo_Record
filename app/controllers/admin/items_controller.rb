class Admin::ItemsController < ApplicationController

  def index
     items = Item.all
     user = current_user
  end

  def new
     @item = Item.new
     @disc = @item.discs.build
     @song = @disc.songs.build
  end

  def create
     @item = Item.new(item_params)
     if @item.save
      redirect_to  admin_items_index_path, notice: "#{@item.item_name}を登録しました"
     else
      render :new
     end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = current_user.cart_item.new
    @cart_item.item.id = @item.id
  end

  def update
    if @item.update_attributes(item_params)
       redirect_to item_path, notice: "#{@item.item_name}を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    Item.find(params[:id]).destroy
    redirect_to  admin_items_index_path, notice: "#{@item.item_name}を削除しました"
  end

  def search
  end

  private

  def item_params
   params.require(:item).permit(:item_name, :item_image, :price, :introduction, :artist_id, :label_id, :genre_id,discs_attributes: [:id, :item_id, :disc_number, :_destroy, songs_attributes: [:id, :disc_id, :song_name, :song_number, :_destroy]])
  end

end