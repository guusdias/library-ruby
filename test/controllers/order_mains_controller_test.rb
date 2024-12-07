require "test_helper"

class OrderMainsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_main = order_mains(:one)
  end

  test "should get index" do
    get order_mains_url
    assert_response :success
  end

  test "should get new" do
    get new_order_main_url
    assert_response :success
  end

  test "should create order_main" do
    assert_difference("OrderMain.count") do
      post order_mains_url, params: { order_main: { status: @order_main.status, total: @order_main.total, user_id: @order_main.user_id } }
    end

    assert_redirected_to order_main_url(OrderMain.last)
  end

  test "should show order_main" do
    get order_main_url(@order_main)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_main_url(@order_main)
    assert_response :success
  end

  test "should update order_main" do
    patch order_main_url(@order_main), params: { order_main: { status: @order_main.status, total: @order_main.total, user_id: @order_main.user_id } }
    assert_redirected_to order_main_url(@order_main)
  end

  test "should destroy order_main" do
    assert_difference("OrderMain.count", -1) do
      delete order_main_url(@order_main)
    end

    assert_redirected_to order_mains_url
  end
end
