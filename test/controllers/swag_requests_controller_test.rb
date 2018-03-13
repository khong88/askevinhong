require 'test_helper'

class SwagRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swag_request = swag_requests(:one)
  end

  test "should get index" do
    get swag_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_swag_request_url
    assert_response :success
  end

  test "should create swag_request" do
    assert_difference('SwagRequest.count') do
      post swag_requests_url, params: { swag_request: { gender: @swag_request.gender, quantity: @swag_request.quantity, size: @swag_request.size, user_id: @swag_request.user_id } }
    end

    assert_redirected_to swag_request_url(SwagRequest.last)
  end

  test "should show swag_request" do
    get swag_request_url(@swag_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_swag_request_url(@swag_request)
    assert_response :success
  end

  test "should update swag_request" do
    patch swag_request_url(@swag_request), params: { swag_request: { gender: @swag_request.gender, quantity: @swag_request.quantity, size: @swag_request.size, user_id: @swag_request.user_id } }
    assert_redirected_to swag_request_url(@swag_request)
  end

  test "should destroy swag_request" do
    assert_difference('SwagRequest.count', -1) do
      delete swag_request_url(@swag_request)
    end

    assert_redirected_to swag_requests_url
  end
end
