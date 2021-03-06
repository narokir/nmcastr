require 'test_helper'

class CastingcallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get castingcalls_url
    assert_response :success
  end

  test "should get new" do
    get new_castingcall_path
    assert_response :success
  end

  test "should get create" do
    post castingcalls_path
    assert_response :success
  end

  test "should get edit" do
    get edit_castingcall
    assert_response :success
  end

  test "should get show" do
    get castingcall_path
    assert_response :success
  end

  test "should get update" do
    get edit_castingcall_path
    assert_response :success
  end

  test "should get destroy" do
    delete castingcall_path
    assert_response :success
  end

end
