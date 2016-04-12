json.array!(@chess_pieces) do |chess_piece|
  json.extract! chess_piece, :id, :pieceType, :pieceImage, :initialRow, :initialCol
  json.url chess_piece_url(chess_piece, format: :json)
end
