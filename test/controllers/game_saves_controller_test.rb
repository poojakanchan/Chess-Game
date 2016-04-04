require 'test_helper'

class GameSavesControllerTest < ActionController::TestCase
  setup do
    @game_safe = game_saves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_saves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_safe" do
    assert_difference('GameSave.count') do
      post :create, game_safe: { col: @game_safe.col, gameId: @game_safe.gameId, pieceId: @game_safe.pieceId, playerId: @game_safe.playerId, row: @game_safe.row }
    end

    assert_redirected_to game_safe_path(assigns(:game_safe))
  end

  test "should show game_safe" do
    get :show, id: @game_safe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_safe
    assert_response :success
  end

  test "should update game_safe" do
    patch :update, id: @game_safe, game_safe: { col: @game_safe.col, gameId: @game_safe.gameId, pieceId: @game_safe.pieceId, playerId: @game_safe.playerId, row: @game_safe.row }
    assert_redirected_to game_safe_path(assigns(:game_safe))
  end

  test "should destroy game_safe" do
    assert_difference('GameSave.count', -1) do
      delete :destroy, id: @game_safe
    end

    assert_redirected_to game_saves_path
  end
end
