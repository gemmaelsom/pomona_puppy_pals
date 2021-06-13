require "test_helper"

class PostAJobControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get post_a_job_post_url
    assert_response :success
  end
end
