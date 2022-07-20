require "application_system_test_case"

class GameRulesTest < ApplicationSystemTestCase
  setup do
    @game_rule = game_rules(:one)
  end

  test "visiting the index" do
    visit game_rules_url
    assert_selector "h1", text: "Game rules"
  end

  test "should create game rule" do
    visit game_rules_url
    click_on "New game rule"

    fill_in "Game", with: @game_rule.game_id
    fill_in "Game rule", with: @game_rule.game_rule
    click_on "Create Game rule"

    assert_text "Game rule was successfully created"
    click_on "Back"
  end

  test "should update Game rule" do
    visit game_rule_url(@game_rule)
    click_on "Edit this game rule", match: :first

    fill_in "Game", with: @game_rule.game_id
    fill_in "Game rule", with: @game_rule.game_rule
    click_on "Update Game rule"

    assert_text "Game rule was successfully updated"
    click_on "Back"
  end

  test "should destroy Game rule" do
    visit game_rule_url(@game_rule)
    click_on "Destroy this game rule", match: :first

    assert_text "Game rule was successfully destroyed"
  end
end
