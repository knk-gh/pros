require 'test_helper'

class ProgressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get progresses_index_url
    assert_response :success
  end

  test "should get show" do
    get progresses_show_url
    assert_response :success
  end

  test "should get new" do
    get progresses_new_url
    assert_response :success
  end

  test "should get create" do
    get progresses_create_url
    assert_response :success
  end

  test "should get edit" do
    get progresses_edit_url
    assert_response :success
  end

  test "should get update" do
    get progresses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get progresses_destroy_url
    assert_response :success
  end

end
