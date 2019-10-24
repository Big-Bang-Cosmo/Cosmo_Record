class Admin::ReviewsController < ApplicationController

  def edit
  	@item = Item.find(params[:item_id])
  	@review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to admin_item_path(@review.item.id)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to admin_user_reviews_path(@review.user.id)
  end

  private
  def review_params
    params.require(:review).permit(:review_body)
  end
end
