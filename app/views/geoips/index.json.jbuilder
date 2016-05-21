json.array!(@geoips) do |geoip|
  json.extract! geoip, :id, :ipaddress, :latitude, :longitude
  json.url geoip_url(geoip, format: :json)
end
