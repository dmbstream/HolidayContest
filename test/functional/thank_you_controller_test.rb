require 'test_helper'

class ThankYouControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
