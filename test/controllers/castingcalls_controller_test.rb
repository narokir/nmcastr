require 'test_helper'

class CastingcallsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get castingcalls_index_url
    assert_response :success
  end

  test "should get new" do
    get castingcalls_new_url
    assert_response :success
  end

  test "should get create" do
    get castingcalls_create_url
    assert_response :success
  end

  test "should get edit" do
    get castingcalls_edit_url
    assert_response :success
  end

  test "should get show" do
    get castingcalls_show_url
    assert_response :success
  end

  test "should get update" do
    get castingcalls_update_url
    assert_response :success
  end

  test "should get destroy" do
    get castingcalls_destroy_url
    assert_response :success
  end

end
