require 'test_helper'

class DevelopmentControllerTest < ActionController::TestCase
  test "should get style" do
    get :style
    assert_response :success
  end

  test "should get model" do
    get :model
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get status" do
    get :status
    assert_response :success
  end

end
