require 'test_helper'

class WorriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get worries_create_url
    assert_response :success
  end

  test "should get destroy" do
    get worries_destroy_url
    assert_response :success
  end

end
