require 'test_helper'

class StatementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @statement_type = statement_types(:one)
  end

  test "should get index" do
    get statement_types_url
    assert_response :success
  end

  test "should get new" do
    get new_statement_type_url
    assert_response :success
  end

  test "should create statement_type" do
    assert_difference('StatementType.count') do
      post statement_types_url, params: { statement_type: { description: @statement_type.description, name: @statement_type.name, status: @statement_type.status, user_id: @statement_type.user_id } }
    end

    assert_redirected_to statement_type_url(StatementType.last)
  end

  test "should show statement_type" do
    get statement_type_url(@statement_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_statement_type_url(@statement_type)
    assert_response :success
  end

  test "should update statement_type" do
    patch statement_type_url(@statement_type), params: { statement_type: { description: @statement_type.description, name: @statement_type.name, status: @statement_type.status, user_id: @statement_type.user_id } }
    assert_redirected_to statement_type_url(@statement_type)
  end

  test "should destroy statement_type" do
    assert_difference('StatementType.count', -1) do
      delete statement_type_url(@statement_type)
    end

    assert_redirected_to statement_types_url
  end
end
