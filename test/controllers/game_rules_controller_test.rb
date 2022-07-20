require "test_helper"

class GameRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_rule = game_rules(:one)
  end

  test "should get index" do
    get game_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_game_rule_url
    assert_response :success
  end

  test "should create game_rule" do
    assert_difference("GameRule.count") do
      post game_rules_url, params: { game_rule: { game_id: @game_rule.game_id, game_rule: @game_rule.game_rule } }
    end

    assert_redirected_to game_rule_url(GameRule.last)
  end

  test "should show game_rule" do
    get game_rule_url(@game_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_rule_url(@game_rule)
    assert_response :success
  end

  test "should update game_rule" do
    patch game_rule_url(@game_rule), params: { game_rule: { game_id: @game_rule.game_id, game_rule: @game_rule.game_rule } }
    assert_redirected_to game_rule_url(@game_rule)
  end

  test "should destroy game_rule" do
    assert_difference("GameRule.count", -1) do
      delete game_rule_url(@game_rule)
    end

    assert_redirected_to game_rules_url
  end
end
