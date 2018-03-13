require 'test_helper'

class AdvisorRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advisor_request = advisor_requests(:one)
  end

  test "should get index" do
    get advisor_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_advisor_request_url
    assert_response :success
  end

  test "should create advisor_request" do
    assert_difference('AdvisorRequest.count') do
      post advisor_requests_url, params: { advisor_request: { company_id: @advisor_request.company_id, description: @advisor_request.description, industry: @advisor_request.industry, status: @advisor_request.status, submitted_at: @advisor_request.submitted_at, user_id: @advisor_request.user_id } }
    end

    assert_redirected_to advisor_request_url(AdvisorRequest.last)
  end

  test "should show advisor_request" do
    get advisor_request_url(@advisor_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_advisor_request_url(@advisor_request)
    assert_response :success
  end

  test "should update advisor_request" do
    patch advisor_request_url(@advisor_request), params: { advisor_request: { company_id: @advisor_request.company_id, description: @advisor_request.description, industry: @advisor_request.industry, status: @advisor_request.status, submitted_at: @advisor_request.submitted_at, user_id: @advisor_request.user_id } }
    assert_redirected_to advisor_request_url(@advisor_request)
  end

  test "should destroy advisor_request" do
    assert_difference('AdvisorRequest.count', -1) do
      delete advisor_request_url(@advisor_request)
    end

    assert_redirected_to advisor_requests_url
  end
end
