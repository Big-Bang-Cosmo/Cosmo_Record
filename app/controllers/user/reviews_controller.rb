class User::ReviewsController < ApplicationController

  # 元は item_reviews
  def show
  	@item = Item.find(params[:item_id])
  	@reviews = @item.reviews.page(params[:page]).reverse_order
  	@user = User.find(params[:user_id])
  end

  

  def create
    @item = Item.find(params[:item_id])
    @review = current_user.reviews.new(review_params)
    @review.item_id = @item.id
    @review.save
    @cart_item = CartItem.new
    @tax_price = @item.price * 1.1
    @reviews = @item.reviews.page(params[:page]).reverse_order
    render "user/items/show"
  end

  def edit
  	@item = Item.find(params[:item_id])
    @review = Review.find(params[:id])
  end

  def update
  	@review = Review.find(params[:id])
  	@review.update(review_params)
    redirect_to user_item_path(@review.item.id)
  end

  def destroy
  end

private
  def review_params
    params.require(:review).permit(:review_body)
  end

end


