require 'test_helper'

class WritingRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @writing_request = writing_requests(:one)
  end

  test "should get index" do
    get writing_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_writing_request_url
    assert_response :success
  end

  test "should create writing_request" do
    assert_difference('WritingRequest.count') do
      post writing_requests_url, params: { writing_request: { company_id: @writing_request.company_id, description: @writing_request.description, submitted_at: @writing_request.submitted_at, user_id: @writing_request.user_id } }
    end

    assert_redirected_to writing_request_url(WritingRequest.last)
  end

  test "should show writing_request" do
    get writing_request_url(@writing_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_writing_request_url(@writing_request)
    assert_response :success
  end

  test "should update writing_request" do
    patch writing_request_url(@writing_request), params: { writing_request: { company_id: @writing_request.company_id, description: @writing_request.description, submitted_at: @writing_request.submitted_at, user_id: @writing_request.user_id } }
    assert_redirected_to writing_request_url(@writing_request)
  end

  test "should destroy writing_request" do
    assert_difference('WritingRequest.count', -1) do
      delete writing_request_url(@writing_request)
    end

    assert_redirected_to writing_requests_url
  end
end
