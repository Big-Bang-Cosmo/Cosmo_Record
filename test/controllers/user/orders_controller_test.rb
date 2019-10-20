require 'test_helper'

class User::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get bought_items" do
    get user_orders_bought_items_url
    assert_response :success
  end

  test "should get day_bought_items" do
    get user_orders_day_bought_items_url
    assert_response :success
  end

end
