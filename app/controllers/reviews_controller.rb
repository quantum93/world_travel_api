class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    country_id = Country.search(params[:country])
    @review = Review.create(review_params)
    @review.country_id = country_id
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def review_params
    params.permit(:rating, :country_id, :content)
  end


end
