require "application_system_test_case"

class StatementTypesTest < ApplicationSystemTestCase
  setup do
    @statement_type = statement_types(:one)
  end

  test "visiting the index" do
    visit statement_types_url
    assert_selector "h1", text: "Statement Types"
  end

  test "creating a Statement type" do
    visit statement_types_url
    click_on "New Statement Type"

    fill_in "Description", with: @statement_type.description
    fill_in "Name", with: @statement_type.name
    fill_in "Status", with: @statement_type.status
    fill_in "User", with: @statement_type.user_id
    click_on "Create Statement type"

    assert_text "Statement type was successfully created"
    click_on "Back"
  end

  test "updating a Statement type" do
    visit statement_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @statement_type.description
    fill_in "Name", with: @statement_type.name
    fill_in "Status", with: @statement_type.status
    fill_in "User", with: @statement_type.user_id
    click_on "Update Statement type"

    assert_text "Statement type was successfully updated"
    click_on "Back"
  end

  test "destroying a Statement type" do
    visit statement_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Statement type was successfully destroyed"
  end
end
