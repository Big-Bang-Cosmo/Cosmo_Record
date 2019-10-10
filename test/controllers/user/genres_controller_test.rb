require 'test_helper'

class User::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get genres_items" do
    get user_genres_genres_items_url
    assert_response :success
  end

end
