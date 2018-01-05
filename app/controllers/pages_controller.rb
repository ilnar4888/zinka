class PagesController < ApplicationController
  expose :sliders, -> { Slider.all.order('created_at DESC')}
	  def home
		  @map = Map.all
		  $hash = Gmaps4rails.build_markers(@map) do |map, marker|
		  marker.lat map.latitude
		  marker.lng map.longitude
		  marker.infowindow map.address_name
  	end
  end
end
