class GameSave < ActiveRecord::Base
 has_many :chess_pieces
 belongs_to :player
 belongs_to :chess_game

end
