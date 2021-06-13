require "test_helper"

class SearchWalkersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get search_walkers_show_url
    assert_response :success
  end
end
