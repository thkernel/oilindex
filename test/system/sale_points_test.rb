require "application_system_test_case"

class SalePointsTest < ApplicationSystemTestCase
  setup do
    @sale_point = sale_points(:one)
  end

  test "visiting the index" do
    visit sale_points_url
    assert_selector "h1", text: "Sale Points"
  end

  test "creating a Sale point" do
    visit sale_points_url
    click_on "New Sale Point"

    fill_in "Name", with: @sale_point.name
    fill_in "Status", with: @sale_point.status
    fill_in "User", with: @sale_point.user_id
    click_on "Create Sale point"

    assert_text "Sale point was successfully created"
    click_on "Back"
  end

  test "updating a Sale point" do
    visit sale_points_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sale_point.name
    fill_in "Status", with: @sale_point.status
    fill_in "User", with: @sale_point.user_id
    click_on "Update Sale point"

    assert_text "Sale point was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale point" do
    visit sale_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale point was successfully destroyed"
  end
end
