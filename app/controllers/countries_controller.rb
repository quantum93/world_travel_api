class CountriesController < ApplicationController

  def index
    @countries = {"united state": "A country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean."}
    json_response(@countries)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
