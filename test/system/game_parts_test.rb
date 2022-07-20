require "application_system_test_case"

class GamePartsTest < ApplicationSystemTestCase
  setup do
    @game_part = game_parts(:one)
  end

  test "visiting the index" do
    visit game_parts_url
    assert_selector "h1", text: "Game parts"
  end

  test "should create game part" do
    visit game_parts_url
    click_on "New game part"

    fill_in "Game", with: @game_part.game_id
    fill_in "Name", with: @game_part.name
    click_on "Create Game part"

    assert_text "Game part was successfully created"
    click_on "Back"
  end

  test "should update Game part" do
    visit game_part_url(@game_part)
    click_on "Edit this game part", match: :first

    fill_in "Game", with: @game_part.game_id
    fill_in "Name", with: @game_part.name
    click_on "Update Game part"

    assert_text "Game part was successfully updated"
    click_on "Back"
  end

  test "should destroy Game part" do
    visit game_part_url(@game_part)
    click_on "Destroy this game part", match: :first

    assert_text "Game part was successfully destroyed"
  end
end
