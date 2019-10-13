require 'test_helper'

class User::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get item_reviews" do
    get user_reviews_item_reviews_url
    assert_response :success
  end

  test "should get edit" do
    get user_reviews_edit_url
    assert_response :success
  end

  test "should get update" do
    get user_reviews_update_url
    assert_response :success
  end

end
