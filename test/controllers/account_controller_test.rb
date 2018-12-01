require 'test_helper'

class AccountControllerTest < ActionDispatch::IntegrationTest
  test "should get createAccount" do
    get account_createAccount_url
    assert_response :success
  end

end
