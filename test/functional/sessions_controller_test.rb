require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get creare" do
    get :creare
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
