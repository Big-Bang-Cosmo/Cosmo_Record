require 'test_helper'

class Admin::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_reviews_index_url
    assert_response :success
  end

  test "should get edit" do
    get admin_reviews_edit_url
    assert_response :success
  end

  test "should get user_reviews" do
    get admin_reviews_user_reviews_url
    assert_response :success
  end

end
