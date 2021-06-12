require "test_helper"

class RegisterYourDogControllerTest < ActionDispatch::IntegrationTest
  test "should get register" do
    get register_your_dog_register_url
    assert_response :success
  end
end
