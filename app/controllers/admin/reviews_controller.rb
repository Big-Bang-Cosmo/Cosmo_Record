class Admin::ReviewsController < ApplicationController
  def index
  	@reviews = Reviews.all.order(created_at: :desc)
    @reviews = Review.page(params[:page]).per(10)
  end

  # def create
  #   review = Review.new(review_params)
  #   item = Item.find(params[:item_id])
  #   review.item_id = item.id
  #   review.user_id = current_user.id
  #   review.save!
  #   redirect_to admin_path(item.id)
  # end

  def edit
  	@user = User.find(params[:id])
  	@review = Review.find(params[:id])
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

  private
  def review_params
    params.require(:review).permit(:review, :body)
  end
end
