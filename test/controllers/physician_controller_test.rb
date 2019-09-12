require 'test_helper'

class PhysicianControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get physician_index_url
    assert_response :success
  end

  test "should get show" do
    get physician_show_url
    assert_response :success
  end

  test "should get new" do
    get physician_new_url
    assert_response :success
  end

end
