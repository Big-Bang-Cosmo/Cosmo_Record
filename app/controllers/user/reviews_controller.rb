class User::ReviewsController < ApplicationController
  def item_reviews
  	@item = Item.find(params[:item_id])
  	@reviews = @item.reviews
  	@user = User.find(params[:item_id])
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
