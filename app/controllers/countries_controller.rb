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

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def country_params
    params.permit(:name)
  end


end
