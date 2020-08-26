require 'test_helper'

class SignInControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get sign_in_login_url
    assert_response :success
  end

end
