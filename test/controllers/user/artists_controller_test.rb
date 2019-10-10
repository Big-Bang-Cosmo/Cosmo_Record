require 'test_helper'

class User::ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get artists_item" do
    get user_artists_artists_item_url
    assert_response :success
  end

end
