class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user

    if @review.save # true or false
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
