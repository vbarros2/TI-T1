require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { birth_year: @character.birth_year, eye_color: @character.eye_color, films: @character.films, gender: @character.gender, hair_color: @character.hair_color, height: @character.height, homeworld: @character.homeworld, mass: @character.mass, name: @character.name, skin_color: @character.skin_color, species: @character.species, starships: @character.starships, vehicles: @character.vehicles } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { birth_year: @character.birth_year, eye_color: @character.eye_color, films: @character.films, gender: @character.gender, hair_color: @character.hair_color, height: @character.height, homeworld: @character.homeworld, mass: @character.mass, name: @character.name, skin_color: @character.skin_color, species: @character.species, starships: @character.starships, vehicles: @character.vehicles } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
