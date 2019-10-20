class Admin::ReviewsController < ApplicationController

  def edit
  	@user = User.find(params[:id])
  	@review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
    redirect_to admin_item_path(@review.item.id)
  end

  private
  def review_params
    params.require(:review).permit(:review, :body)
  end
end
