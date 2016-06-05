json.array!(@pictures) do |picture|
  json.extract! picture, :id, :name, :descr, :imageable_id
  json.url picture_url(picture, format: :json)
end
