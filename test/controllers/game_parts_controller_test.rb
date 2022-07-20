require "test_helper"

class GamePartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_part = game_parts(:one)
  end

  test "should get index" do
    get game_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_game_part_url
    assert_response :success
  end

  test "should create game_part" do
    assert_difference("GamePart.count") do
      post game_parts_url, params: { game_part: { game_id: @game_part.game_id, name: @game_part.name } }
    end

    assert_redirected_to game_part_url(GamePart.last)
  end

  test "should show game_part" do
    get game_part_url(@game_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_part_url(@game_part)
    assert_response :success
  end

  test "should update game_part" do
    patch game_part_url(@game_part), params: { game_part: { game_id: @game_part.game_id, name: @game_part.name } }
    assert_redirected_to game_part_url(@game_part)
  end

  test "should destroy game_part" do
    assert_difference("GamePart.count", -1) do
      delete game_part_url(@game_part)
    end

    assert_redirected_to game_parts_url
  end
end
