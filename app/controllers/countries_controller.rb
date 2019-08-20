class CountriesController < ApplicationController

  def index
    @countries = "united state"
    json_response(@countries)
  end

  def show
    @country = Country.find(params[:id].to_str)
    json_response(@country)
  end

  def create
    @country = Country.create(country_params)
    json_response(@country)
  end

  def update
    @country = Country.find(params[:id])
    @country.update(country_params)
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
  end

# These two functions are for scope
  def popular_country
    @most_reviews = Country.most_reviews
    json_response(@most_reviews)
  end

  def satisfied_country
    @most_rates = Country.most_rates
    json_response(@most_rates)
  end

# This is for the random selection of country
  def suprising_country
    @random_place = Country.random_place
    @reviews = Review.where(country_id: @random_place[0].id)
    byebug
    json_response([@random_place, @reviews])
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def country_params
    params.permit(:name)
  end


end
