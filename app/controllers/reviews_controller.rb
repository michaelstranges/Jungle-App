class ReviewsController < ApplicationController

  def create
    @review = Review.new(allowed_params)
    @review.user = current_user
    @review.product_id = params[:product_id] #connect the review to product_id
    @review.save
    redirect_to :back
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :back
  end

private
  def allowed_params
    params.require(:review).permit(:description, :rating)
  end
end
