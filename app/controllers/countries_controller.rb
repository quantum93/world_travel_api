class CountriesController < ApplicationController

  def index
    @countries = "united state"
    json_response(@countries)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
