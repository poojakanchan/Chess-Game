class CreateChessGames < ActiveRecord::Migration
  def change
    create_table :chess_games do |t|
      t.string :gameType
      t.string :accessCode
      t.boolean :publicMatch

      t.timestamps null: false
    end
  end
end
