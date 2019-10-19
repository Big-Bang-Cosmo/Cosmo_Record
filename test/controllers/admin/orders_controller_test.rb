require 'test_helper'

class Admin::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_orders_index_url
    assert_response :success
  end

  test "should get bought_items" do
    get admin_orders_bought_items_url
    assert_response :success
  end

  test "should get day_bought_items" do
    get admin_orders_day_bought_items_url
    assert_response :success
  end

end
