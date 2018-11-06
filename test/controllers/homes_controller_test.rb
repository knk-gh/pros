require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get about" do
    get homes_about_url
    assert_response :success
  end

  test "should get goodbye" do
    get homes_goodbye_url
    assert_response :success
  end

  test "should get useful" do
    get homes_useful_url
    assert_response :success
  end

end
