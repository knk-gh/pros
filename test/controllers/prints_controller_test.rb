require 'test_helper'

class PrintsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get prints_new_url
    assert_response :success
  end

  test "should get create" do
    get prints_create_url
    assert_response :success
  end

  test "should get edit" do
    get prints_edit_url
    assert_response :success
  end

  test "should get update" do
    get prints_update_url
    assert_response :success
  end

  test "should get destroy" do
    get prints_destroy_url
    assert_response :success
  end

end
