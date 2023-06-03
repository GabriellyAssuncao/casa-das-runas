require "application_system_test_case"

class PurchaseOrderDetailsTest < ApplicationSystemTestCase
  setup do
    @purchase_order_detail = purchase_order_details(:one)
  end

  test "visiting the index" do
    visit purchase_order_details_url
    assert_selector "h1", text: "Purchase order details"
  end

  test "should create purchase order detail" do
    visit purchase_order_details_url
    click_on "New purchase order detail"

    click_on "Create Purchase order detail"

    assert_text "Purchase order detail was successfully created"
    click_on "Back"
  end

  test "should update Purchase order detail" do
    visit purchase_order_detail_url(@purchase_order_detail)
    click_on "Edit this purchase order detail", match: :first

    click_on "Update Purchase order detail"

    assert_text "Purchase order detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Purchase order detail" do
    visit purchase_order_detail_url(@purchase_order_detail)
    click_on "Destroy this purchase order detail", match: :first

    assert_text "Purchase order detail was successfully destroyed"
  end
end
