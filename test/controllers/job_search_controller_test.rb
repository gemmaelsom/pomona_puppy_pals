require "test_helper"

class JobSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get job_search_search_url
    assert_response :success
  end
end
