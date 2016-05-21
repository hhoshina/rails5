class MapController < ApplicationController
  def index
    @geoips = Geoip.all
    @hash = Gmaps4rails.build_markers(@geoips) do |geoip, marker|
      marker.lat geoip.latitude
      marker.lng geoip.longitude
      marker.infowindow geoip.ipaddress
      # marker.json({title: geoip.title})
    end
  end
end
