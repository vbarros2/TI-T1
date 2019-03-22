require "application_system_test_case"

class CharactersTest < ApplicationSystemTestCase
  setup do
    @character = characters(:one)
  end

  test "visiting the index" do
    visit characters_url
    assert_selector "h1", text: "Characters"
  end

  test "creating a Character" do
    visit characters_url
    click_on "New Character"

    fill_in "Birth year", with: @character.birth_year
    fill_in "Eye color", with: @character.eye_color
    fill_in "Films", with: @character.films
    fill_in "Gender", with: @character.gender
    fill_in "Hair color", with: @character.hair_color
    fill_in "Height", with: @character.height
    fill_in "Homeworld", with: @character.homeworld
    fill_in "Mass", with: @character.mass
    fill_in "Name", with: @character.name
    fill_in "Skin color", with: @character.skin_color
    fill_in "Species", with: @character.species
    fill_in "Starships", with: @character.starships
    fill_in "Vehicles", with: @character.vehicles
    click_on "Create Character"

    assert_text "Character was successfully created"
    click_on "Back"
  end

  test "updating a Character" do
    visit characters_url
    click_on "Edit", match: :first

    fill_in "Birth year", with: @character.birth_year
    fill_in "Eye color", with: @character.eye_color
    fill_in "Films", with: @character.films
    fill_in "Gender", with: @character.gender
    fill_in "Hair color", with: @character.hair_color
    fill_in "Height", with: @character.height
    fill_in "Homeworld", with: @character.homeworld
    fill_in "Mass", with: @character.mass
    fill_in "Name", with: @character.name
    fill_in "Skin color", with: @character.skin_color
    fill_in "Species", with: @character.species
    fill_in "Starships", with: @character.starships
    fill_in "Vehicles", with: @character.vehicles
    click_on "Update Character"

    assert_text "Character was successfully updated"
    click_on "Back"
  end

  test "destroying a Character" do
    visit characters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character was successfully destroyed"
  end
end
