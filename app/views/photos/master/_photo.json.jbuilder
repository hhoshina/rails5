json.extract! photo, :id, :file, :created_at, :updated_at
json.url photo_url(photo, format: :json)