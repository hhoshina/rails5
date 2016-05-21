json.array!(@twines) do |twine|
  json.extract! twine, :id, :locate, :temp
  json.url twine_url(twine, format: :json)
end
