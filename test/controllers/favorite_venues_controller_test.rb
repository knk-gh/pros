require 'test_helper'

class FavoriteVenuesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get favorite_venues_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorite_venues_destroy_url
    assert_response :success
  end

end
