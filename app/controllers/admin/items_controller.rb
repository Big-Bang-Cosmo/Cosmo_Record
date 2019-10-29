class Admin::ItemsController < ApplicationController
  before_action :authenticate_admin!

  def index
     @items = Item.page(params[:page]).reverse_order
     @user = current_user
  end

  def new
     @item = Item.new
     @disc = @item.discs.build
     @song = @disc.songs.build
     @moji = "商品を追加する"
     @url = admin_items_path
  end

  def create
     @item = Item.new(item_params)
     if @item.save
      redirect_to  admin_items_path, notice: "#{@item.item_name}を登録しました"
     else
     @disc = @item.discs.build
     @song = @disc.songs.build
     @moji = "商品を追加する"
     @url = admin_items_path
    render 'admin/items/new'
     end
  end

  def edit
    @item = Item.find(params[:id])
    @moji = "商品を編集する"
    @url = admin_item_path
  end

  def show
    @item = Item.find(params[:id])
    @reviews = @item.reviews.page(params[:page]).reverse_order
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
       redirect_to admin_items_path, notice: "#{@item.item_name}を更新しました"
    else
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    Item.find(params[:id]).destroy
    redirect_to  admin_items_path, notice: "#{@item.item_name}を削除しました"
  end

  def search
    @items = Item.search(params[:search])
  end

  private

  def item_params
   params.require(:item).permit(:item_name, :item_image, :price, :introduction, :artist_id, :label_id, :genre_id,discs_attributes: [:id, :item_id, :disc_number, :_destroy, songs_attributes: [:id, :disc_id, :song_name, :song_number, :_destroy]])
  end

end