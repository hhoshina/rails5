json.extract! apachelog, :id, :ipadress, :time, :method, :status, :bite, :url, :useragent, :created_at, :updated_at
json.url apachelog_url(apachelog, format: :json)