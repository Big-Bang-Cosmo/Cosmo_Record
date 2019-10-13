require 'test_helper'

class GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get genre_items" do
    get genres_genre_items_url
    assert_response :success
  end

end
