require 'test_helper'

class ChessPiecesControllerTest < ActionController::TestCase
  setup do
    @chess_piece = chess_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chess_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chess_piece" do
    assert_difference('ChessPiece.count') do
      post :create, chess_piece: { initialCol: @chess_piece.initialCol, initialRow: @chess_piece.initialRow, pieceImage: @chess_piece.pieceImage, pieceType: @chess_piece.pieceType }
    end

    assert_redirected_to chess_piece_path(assigns(:chess_piece))
  end

  test "should show chess_piece" do
    get :show, id: @chess_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chess_piece
    assert_response :success
  end

  test "should update chess_piece" do
    patch :update, id: @chess_piece, chess_piece: { initialCol: @chess_piece.initialCol, initialRow: @chess_piece.initialRow, pieceImage: @chess_piece.pieceImage, pieceType: @chess_piece.pieceType }
    assert_redirected_to chess_piece_path(assigns(:chess_piece))
  end

  test "should destroy chess_piece" do
    assert_difference('ChessPiece.count', -1) do
      delete :destroy, id: @chess_piece
    end

    assert_redirected_to chess_pieces_path
  end
end
