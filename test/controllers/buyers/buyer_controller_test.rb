require 'test_helper'

class Buyers::BuyerControllerTest < ActionDispatch::IntegrationTest
  test "should get show_products" do
    get buyers_buyer_show_products_url
    assert_response :success
  end

end
