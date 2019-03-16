class LocationsController < ApplicationController

  def index

  end

  def submit
    @data = Location.new(location_params)
    @data.save
    redirect_to root_path
  end

  def location_params
    
    params.permit(:longitude, :latitude)
  end


end
