require 'test_helper'

class ArrendatarioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get arrendatario_index_url
    assert_response :success
  end

end
