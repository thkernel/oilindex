require 'test_helper'

class SalePointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_point = sale_points(:one)
  end

  test "should get index" do
    get sale_points_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_point_url
    assert_response :success
  end

  test "should create sale_point" do
    assert_difference('SalePoint.count') do
      post sale_points_url, params: { sale_point: { name: @sale_point.name, status: @sale_point.status, user_id: @sale_point.user_id } }
    end

    assert_redirected_to sale_point_url(SalePoint.last)
  end

  test "should show sale_point" do
    get sale_point_url(@sale_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_point_url(@sale_point)
    assert_response :success
  end

  test "should update sale_point" do
    patch sale_point_url(@sale_point), params: { sale_point: { name: @sale_point.name, status: @sale_point.status, user_id: @sale_point.user_id } }
    assert_redirected_to sale_point_url(@sale_point)
  end

  test "should destroy sale_point" do
    assert_difference('SalePoint.count', -1) do
      delete sale_point_url(@sale_point)
    end

    assert_redirected_to sale_points_url
  end
end
