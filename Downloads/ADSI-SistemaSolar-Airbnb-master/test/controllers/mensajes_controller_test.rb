require 'test_helper'

class MensajesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mensajes_index_url
    assert_response :success
  end

end
