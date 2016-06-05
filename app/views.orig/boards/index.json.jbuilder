json.array!(@boards) do |board|
  json.extract! board, :id, :pn, :name, :descr
  json.url board_url(board, format: :json)
end
