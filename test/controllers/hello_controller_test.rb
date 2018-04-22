require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get '/'
    assert_response :success
  end

end
