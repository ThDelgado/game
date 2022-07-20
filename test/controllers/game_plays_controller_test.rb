require "test_helper"

class GamePlaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_play = game_plays(:one)
  end

  test "should get index" do
    get game_plays_url
    assert_response :success
  end

  test "should get new" do
    get new_game_play_url
    assert_response :success
  end

  test "should create game_play" do
    assert_difference("GamePlay.count") do
      post game_plays_url, params: { game_play: { date: @game_play.date, description: @game_play.description, name: @game_play.name } }
    end

    assert_redirected_to game_play_url(GamePlay.last)
  end

  test "should show game_play" do
    get game_play_url(@game_play)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_play_url(@game_play)
    assert_response :success
  end

  test "should update game_play" do
    patch game_play_url(@game_play), params: { game_play: { date: @game_play.date, description: @game_play.description, name: @game_play.name } }
    assert_redirected_to game_play_url(@game_play)
  end

  test "should destroy game_play" do
    assert_difference("GamePlay.count", -1) do
      delete game_play_url(@game_play)
    end

    assert_redirected_to game_plays_url
  end
end
