require "application_system_test_case"

class GamePlaysTest < ApplicationSystemTestCase
  setup do
    @game_play = game_plays(:one)
  end

  test "visiting the index" do
    visit game_plays_url
    assert_selector "h1", text: "Game plays"
  end

  test "should create game play" do
    visit game_plays_url
    click_on "New game play"

    fill_in "Date", with: @game_play.date
    fill_in "Description", with: @game_play.description
    fill_in "Name", with: @game_play.name
    click_on "Create Game play"

    assert_text "Game play was successfully created"
    click_on "Back"
  end

  test "should update Game play" do
    visit game_play_url(@game_play)
    click_on "Edit this game play", match: :first

    fill_in "Date", with: @game_play.date
    fill_in "Description", with: @game_play.description
    fill_in "Name", with: @game_play.name
    click_on "Update Game play"

    assert_text "Game play was successfully updated"
    click_on "Back"
  end

  test "should destroy Game play" do
    visit game_play_url(@game_play)
    click_on "Destroy this game play", match: :first

    assert_text "Game play was successfully destroyed"
  end
end
