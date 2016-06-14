json.array!(@sensor_families) do |sensor_family|
  json.extract! sensor_family, :id, :name, :descr, :technology_id
  json.url sensor_family_url(sensor_family, format: :json)
end
