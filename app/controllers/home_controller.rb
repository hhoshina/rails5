require 'json'
class HomeController < ApplicationController
  def index
	json2 = `/var/www/cgi-cmd/GeoIP-Day-stdout`
    @chart_data2 = JSON.parse(json2)
  end
end
