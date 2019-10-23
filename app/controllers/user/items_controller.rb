class User::ItemsController < ApplicationController


 def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @tax_price = @item.price * 1.1
    @review = Review.new
    @reviews = @item.reviews.page(params[:page]).reverse_order
 end

  def index
    @items = Item.page(params[:page]).reverse_order
    @genres = Genre.all
    @user = current_user

    # ランキング機能
    # item_sales = Item.joins(:order_item).group(:item_id).count
    # item_sales_ids = Hash[item_sales.sort_by{ |_, v| -v}].keys
    # @item_sales_ranking = Item.where(id: item_sales_ids)

    @item_sales_ranking = Item.find(OrderItem.group(:item_id).order('count(item_id)desc').limit(5).pluck(:item_id))

    # @item_sales_id = OrderItem.group(:item_id).order('count_item_id DESC').limit(5).count(:item_id).keys
    # @item_sales_order_item = @item_sales_id.map{|id| Item.find(id)}
    # @item_sales = @item_sales_id.map{|id| OrderItem.where(item_id: id).count}

  end

  def search
    @items = Item.search(params[:search])
  end
end
