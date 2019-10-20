class User::ReviewsController < ApplicationController
  def item_reviews
  	@item = Item.find(params[:item_id])
  	@reviews = @item.reviews
  	@user = User.find(params[:user_id])
  end

  def user_reviews
    @user = User.find(params[:user_id])
    @reviews = @user.reviews
  def create
    item = Item.find(params[:item_id])
    review = current_user.reviews.new(review_params)
    review.item_id = item.id
    review.save
    redirect_to user_item_path(item.id)
  end

  def edit
  	@user = User.find(params[:user_id])
  	@review = Review.find(prams[:id])
  	if @user != current_user
  	   redirect_to root_path
  	end
  end

  def update
  	@review = Review.find(prams[:id])
  	@review.update(review_params)
    redirect_to user_reviews_path(@review.id)
  end
end

private
  def review_params
    params.require(:review).permit(:review_body)
  end
end

