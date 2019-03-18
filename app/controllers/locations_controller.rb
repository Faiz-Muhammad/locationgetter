class LocationsController < ApplicationController

  def index
    visitor_latitude = request.location.latitude.to_s
    visitor_longitude = request.location.longitude.to_s
    # visitor_latitude = 31.462861599999997.to_s
    # visitor_longitude = 74.27267909999999.to_s
    visitor_location = Geocoder.search([visitor_latitude, visitor_longitude])
    @data = Location.new(longitude: visitor_longitude, latitude: visitor_latitude, location: visitor_location.first.address)
    @data.save
  end

  # def submit
  #   visitor_latitude = request.location.latitude
  #   visitor_longitude = request.location.longitude
  # end

  # def location_params
  #   params.permit(:longitude, :latitude)
  # end


end
