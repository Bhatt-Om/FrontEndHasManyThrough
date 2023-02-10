require "test_helper"

class GroupmembershipsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get groupmemberships_index_url
    assert_response :success
  end

  test "should get show" do
    get groupmemberships_show_url
    assert_response :success
  end

  test "should get new" do
    get groupmemberships_new_url
    assert_response :success
  end

  test "should get create" do
    get groupmemberships_create_url
    assert_response :success
  end

  test "should get update" do
    get groupmemberships_update_url
    assert_response :success
  end

  test "should get destroy" do
    get groupmemberships_destroy_url
    assert_response :success
  end
end
