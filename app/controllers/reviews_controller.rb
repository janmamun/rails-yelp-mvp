class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @Rreview.save
      redirect_to review_path(@review)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @review = Review.find(params[:id])
    @review.update(params[:review])
  end

  def edit
    @review = Review.find(params[:id])
  end

  private

  def review_params
    params.require(:review).permit(:name, :address, :rating)
  end

end

end
