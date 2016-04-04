require 'test_helper'

class ChessGamesControllerTest < ActionController::TestCase
  setup do
    @chess_game = chess_games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chess_games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chess_game" do
    assert_difference('ChessGame.count') do
      post :create, chess_game: { accessCode: @chess_game.accessCode, gameType: @chess_game.gameType, playerBlackId: @chess_game.playerBlackId, playerWhiteId: @chess_game.playerWhiteId, publicMatch: @chess_game.publicMatch }
    end

    assert_redirected_to chess_game_path(assigns(:chess_game))
  end

  test "should show chess_game" do
    get :show, id: @chess_game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chess_game
    assert_response :success
  end

  test "should update chess_game" do
    patch :update, id: @chess_game, chess_game: { accessCode: @chess_game.accessCode, gameType: @chess_game.gameType, playerBlackId: @chess_game.playerBlackId, playerWhiteId: @chess_game.playerWhiteId, publicMatch: @chess_game.publicMatch }
    assert_redirected_to chess_game_path(assigns(:chess_game))
  end

  test "should destroy chess_game" do
    assert_difference('ChessGame.count', -1) do
      delete :destroy, id: @chess_game
    end

    assert_redirected_to chess_games_path
  end
end
