require 'test_helper'

class User::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_user_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_user_edit_url
    assert_response :success
  end

  test "should get favorites" do
    get user_user_favorites_url
    assert_response :success
  end

end
