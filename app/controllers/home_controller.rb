# Main controller
class HomeController < ApplicationController
  before_filter :fetch_data
  before_filter :set_city

  def index
    @today = @response.days.first
    @rest  = @response.days.slice(1, 16) || []
  end

  def show
    @day = @response.days.find { |item| item.dt.to_s == params[:dt] }
  end

  private

  def fetch_data
    json_response = Forecast::Fetcher.fetch(place: place)
    @response     = Forecast::Parser.parse(json_response)
  end

  def set_city
    @city = @response.city
  end

  def filter_params
    params.require(:filter)
  rescue
    params
  end

  def place
    @place = filter_params.fetch(:place)
  rescue
    @place = 'London'
  end
end
