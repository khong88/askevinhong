require 'test_helper'

class SpeakingRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speaking_request = speaking_requests(:one)
  end

  test "should get index" do
    get speaking_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_speaking_request_url
    assert_response :success
  end

  test "should create speaking_request" do
    assert_difference('SpeakingRequest.count') do
      post speaking_requests_url, params: { speaking_request: { description: @speaking_request.description, event_date: @speaking_request.event_date, event_name: @speaking_request.event_name, user_id: @speaking_request.user_id } }
    end

    assert_redirected_to speaking_request_url(SpeakingRequest.last)
  end

  test "should show speaking_request" do
    get speaking_request_url(@speaking_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_speaking_request_url(@speaking_request)
    assert_response :success
  end

  test "should update speaking_request" do
    patch speaking_request_url(@speaking_request), params: { speaking_request: { description: @speaking_request.description, event_date: @speaking_request.event_date, event_name: @speaking_request.event_name, user_id: @speaking_request.user_id } }
    assert_redirected_to speaking_request_url(@speaking_request)
  end

  test "should destroy speaking_request" do
    assert_difference('SpeakingRequest.count', -1) do
      delete speaking_request_url(@speaking_request)
    end

    assert_redirected_to speaking_requests_url
  end
end
