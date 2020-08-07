require "application_system_test_case"

class StatementsTest < ApplicationSystemTestCase
  setup do
    @statement = statements(:one)
  end

  test "visiting the index" do
    visit statements_url
    assert_selector "h1", text: "Statements"
  end

  test "creating a Statement" do
    visit statements_url
    click_on "New Statement"

    fill_in "Product", with: @statement.product_id
    fill_in "Statement time", with: @statement.statement_time
    fill_in "Statement type", with: @statement.statement_type_id
    fill_in "Status", with: @statement.status
    fill_in "User", with: @statement.user_id
    click_on "Create Statement"

    assert_text "Statement was successfully created"
    click_on "Back"
  end

  test "updating a Statement" do
    visit statements_url
    click_on "Edit", match: :first

    fill_in "Product", with: @statement.product_id
    fill_in "Statement time", with: @statement.statement_time
    fill_in "Statement type", with: @statement.statement_type_id
    fill_in "Status", with: @statement.status
    fill_in "User", with: @statement.user_id
    click_on "Update Statement"

    assert_text "Statement was successfully updated"
    click_on "Back"
  end

  test "destroying a Statement" do
    visit statements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Statement was successfully destroyed"
  end
end
