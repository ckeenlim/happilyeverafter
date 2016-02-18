require 'test_helper'

class VendorsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get change" do
    get :change
    assert_response :success
  end

  test "should get import" do
    get :import
    assert_response :success
  end

end
