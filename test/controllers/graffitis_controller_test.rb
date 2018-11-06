require 'test_helper'

class GraffitisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get graffitis_show_url
    assert_response :success
  end

  test "should get new" do
    get graffitis_new_url
    assert_response :success
  end

  test "should get create" do
    get graffitis_create_url
    assert_response :success
  end

  test "should get destroy" do
    get graffitis_destroy_url
    assert_response :success
  end

end
