class CreateChessPieces < ActiveRecord::Migration
  def change
    create_table :chess_pieces do |t|
      t.string :pieceType
      t.binary :pieceImage
      t.integer :initialRow
      t.string :initialCol
      t.string :integer

      t.timestamps null: false
    end
  end
end
