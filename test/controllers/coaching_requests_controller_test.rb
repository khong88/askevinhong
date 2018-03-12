require 'test_helper'

class CoachingRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coaching_request = coaching_requests(:one)
  end

  test "should get index" do
    get coaching_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_coaching_request_url
    assert_response :success
  end

  test "should create coaching_request" do
    assert_difference('CoachingRequest.count') do
      post coaching_requests_url, params: { coaching_request: { description: @coaching_request.description, status: @coaching_request.status, submitted_at: @coaching_request.submitted_at, user_id: @coaching_request.user_id } }
    end

    assert_redirected_to coaching_request_url(CoachingRequest.last)
  end

  test "should show coaching_request" do
    get coaching_request_url(@coaching_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_coaching_request_url(@coaching_request)
    assert_response :success
  end

  test "should update coaching_request" do
    patch coaching_request_url(@coaching_request), params: { coaching_request: { description: @coaching_request.description, status: @coaching_request.status, submitted_at: @coaching_request.submitted_at, user_id: @coaching_request.user_id } }
    assert_redirected_to coaching_request_url(@coaching_request)
  end

  test "should destroy coaching_request" do
    assert_difference('CoachingRequest.count', -1) do
      delete coaching_request_url(@coaching_request)
    end

    assert_redirected_to coaching_requests_url
  end
end
