require 'test_helper'

class BlogpostverfassenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogpostverfassen_index_url
    assert_response :success
  end

end
