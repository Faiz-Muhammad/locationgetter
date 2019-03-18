class LocationsController < ApplicationController

  def index
    visitor_latitude = request.location.latitude
    visitor_longitude = request.location.longitude
    # visitor_latitude = 31.462861599999997
    # visitor_longitude = 74.27267909999999
    @data = Location.new(longitude: visitor_longitude, latitude: visitor_latitude)
    @data.save
    redirect_to root_path
  end

  def submit
    visitor_latitude = request.location.latitude
    visitor_longitude = request.location.longitude
  end

  def location_params
    params.permit(:longitude, :latitude)
  end


end
