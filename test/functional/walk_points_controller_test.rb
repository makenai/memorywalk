require 'test_helper'

class WalkPointsControllerTest < ActionController::TestCase
  setup do
    @walk_point = walk_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walk_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walk_point" do
    assert_difference('WalkPoint.count') do
      post :create, walk_point: { description: @walk_point.description, lat: @walk_point.lat, lon: @walk_point.lon, walk_id: @walk_point.walk_id }
    end

    assert_redirected_to walk_point_path(assigns(:walk_point))
  end

  test "should show walk_point" do
    get :show, id: @walk_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walk_point
    assert_response :success
  end

  test "should update walk_point" do
    put :update, id: @walk_point, walk_point: { description: @walk_point.description, lat: @walk_point.lat, lon: @walk_point.lon, walk_id: @walk_point.walk_id }
    assert_redirected_to walk_point_path(assigns(:walk_point))
  end

  test "should destroy walk_point" do
    assert_difference('WalkPoint.count', -1) do
      delete :destroy, id: @walk_point
    end

    assert_redirected_to walk_points_path
  end
end
