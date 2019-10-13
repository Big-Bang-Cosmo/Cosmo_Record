class Admin::ReviewsController < ApplicationController
  def index
  	@reviews = Reviews.all.order(created_at: :desc)
    @reviews = Review.page(params[:page]).per(10)
  end

  def edit
  	@user = User.find(params[:user_id])
  	@review = Review.find(params[:id])
  	end
  end

  def update
  	@review = Review.find(params[:id])
  	@review.update(review_params)
  	redirect_to user_reviews_path(@review.id)
  end

  def user_reviews
  	@user = User.find(params[:user_id])
  	@reviews = @user.reviews
    @reviews = Reviews.all.order(created_at: :desc)
    @reviews = Review.page(params[:page]).per(10)
  	@item = Item.find(params[:item_id])
  end
end

private
  def review_params
    params.require(:review).permit(:review, :body)
  end
