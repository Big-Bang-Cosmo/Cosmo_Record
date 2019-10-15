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
      redirect_to item_path,notice: "#{@item.item_name}を登録しました"
     else
      render :new
     end
  end

  def edit
    @item = Item.find(paramas[:id])
  end

  def show
  end

  def update
    if @item.update_attributes(item_params)
       redirect_to item_path, notice: "#{@item.item_name}を更新しました"
    else
      render :edit
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to item_path, notice: "#{@item.item_name}を削除しました"
  end

  def search
  end

  private

  def item_params
   params.require(:item).permit(:item_name, :item_image_id, :price, :introduction, :artist_id, :label_id, :genre_id,discs_attributes: [:id, :item_id, :disc_number, :_destroy, songs_attributes: [:id, :disc_id, :song_title, :song_number, :_destroy]])
  end

end
