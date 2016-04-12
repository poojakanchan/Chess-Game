json.array!(@game_saves) do |game_safe|
  json.extract! game_safe, :id, :row, :col
  json.url game_safe_url(game_safe, format: :json)
end
