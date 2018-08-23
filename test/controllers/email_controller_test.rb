require 'test_helper'

class EmailControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get email_new_url
    assert_response :success
  end

end
