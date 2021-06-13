require "test_helper"

class SearchJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_jobs_search_url
    assert_response :success
  end
end
