require 'test_helper'

class ArrendadorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arrendador_index_url
    assert_response :success
  end

end
