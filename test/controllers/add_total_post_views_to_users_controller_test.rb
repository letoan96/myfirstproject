require 'test_helper'

class AddTotalPostViewsToUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_total_post_views_to_user = add_total_post_views_to_users(:one)
  end

  test "should get index" do
    get add_total_post_views_to_users_url
    assert_response :success
  end

  test "should get new" do
    get new_add_total_post_views_to_user_url
    assert_response :success
  end

  test "should create add_total_post_views_to_user" do
    assert_difference('AddTotalPostViewsToUser.count') do
      post add_total_post_views_to_users_url, params: { add_total_post_views_to_user: { total_post_views: @add_total_post_views_to_user.total_post_views } }
    end

    assert_redirected_to add_total_post_views_to_user_url(AddTotalPostViewsToUser.last)
  end

  test "should show add_total_post_views_to_user" do
    get add_total_post_views_to_user_url(@add_total_post_views_to_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_total_post_views_to_user_url(@add_total_post_views_to_user)
    assert_response :success
  end

  test "should update add_total_post_views_to_user" do
    patch add_total_post_views_to_user_url(@add_total_post_views_to_user), params: { add_total_post_views_to_user: { total_post_views: @add_total_post_views_to_user.total_post_views } }
    assert_redirected_to add_total_post_views_to_user_url(@add_total_post_views_to_user)
  end

  test "should destroy add_total_post_views_to_user" do
    assert_difference('AddTotalPostViewsToUser.count', -1) do
      delete add_total_post_views_to_user_url(@add_total_post_views_to_user)
    end

    assert_redirected_to add_total_post_views_to_users_url
  end
end
