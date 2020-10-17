require 'test_helper'

class EinstellungenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get einstellungen_index_url
    assert_response :success
  end

end
