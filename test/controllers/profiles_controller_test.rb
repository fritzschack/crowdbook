require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get my-profile" do
    get profiles_my-profile_url
    assert_response :success
  end

  test "should get show" do
    get profiles_show_url
    assert_response :success
  end

end
