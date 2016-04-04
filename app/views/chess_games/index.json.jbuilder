json.array!(@chess_games) do |chess_game|
  json.extract! chess_game, :id, :gameType, :playerWhiteId, :playerBlackId, :accessCode, :publicMatch
  json.url chess_game_url(chess_game, format: :json)
end
