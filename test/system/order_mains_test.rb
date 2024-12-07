require "application_system_test_case"

class OrderMainsTest < ApplicationSystemTestCase
  setup do
    @order_main = order_mains(:one)
  end

  test "visiting the index" do
    visit order_mains_url
    assert_selector "h1", text: "Order mains"
  end

  test "should create order main" do
    visit order_mains_url
    click_on "New order main"

    fill_in "Status", with: @order_main.status
    fill_in "Total", with: @order_main.total
    fill_in "User", with: @order_main.user_id
    click_on "Create Order main"

    assert_text "Order main was successfully created"
    click_on "Back"
  end

  test "should update Order main" do
    visit order_main_url(@order_main)
    click_on "Edit this order main", match: :first

    fill_in "Status", with: @order_main.status
    fill_in "Total", with: @order_main.total
    fill_in "User", with: @order_main.user_id
    click_on "Update Order main"

    assert_text "Order main was successfully updated"
    click_on "Back"
  end

  test "should destroy Order main" do
    visit order_main_url(@order_main)
    click_on "Destroy this order main", match: :first

    assert_text "Order main was successfully destroyed"
  end
end
