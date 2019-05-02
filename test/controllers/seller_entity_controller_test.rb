require 'test_helper'

class SellerEntityControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get seller_entity_new_url
    assert_response :success
  end

  test "should get create" do
    get seller_entity_create_url
    assert_response :success
  end

end
