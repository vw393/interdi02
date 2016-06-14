json.array!(@combinations) do |combination|
  json.extract! combination, :id, :sensor_id, :board_id
  json.url combination_url(combination, format: :json)
end
