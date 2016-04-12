class ChessGame < ActiveRecord::Base
   belongs_to :player_white_id, :class_name => 'Player'
   belongs_to :player_black_id,:class_name => 'Player'
   has_many :game_saves
   
 end
