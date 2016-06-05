json.array!(@sensors) do |sensor|
  json.extract! sensor, :id, :pn, :name, :descr, :size, :manufacturer_id, :sensor_family_id
  json.url sensor_url(sensor, format: :json)
end
