require 'test_helper'

class RelatioshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get relatioships_create_url
    assert_response :success
  end

  test "should get destroy" do
    get relatioships_destroy_url
    assert_response :success
  end

end
