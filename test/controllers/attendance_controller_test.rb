require 'test_helper'

class AttendanceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attendance_index_url
    assert_response :success
  end

  test "should get show" do
    get attendance_show_url
    assert_response :success
  end

  test "should get new" do
    get attendance_new_url
    assert_response :success
  end

  test "should get update" do
    get attendance_update_url
    assert_response :success
  end

  test "should get destroy" do
    get attendance_destroy_url
    assert_response :success
  end

end
