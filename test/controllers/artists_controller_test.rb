require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get artist_item" do
    get artists_artist_item_url
    assert_response :success
  end

end
