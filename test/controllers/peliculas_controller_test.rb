require 'test_helper'

class PeliculasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get peliculas_show_url
    assert_response :success
  end

end
