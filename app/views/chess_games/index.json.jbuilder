json.array!(@chess_games) do |chess_game|
  json.extract! chess_game, :id, :gameType, :accessCode, :publicMatch
  json.url chess_game_url(chess_game, format: :json)
end
