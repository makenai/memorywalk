require 'test_helper'

class WalksControllerTest < ActionController::TestCase
  setup do
    @walk = walks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:walks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create walk" do
    assert_difference('Walk.count') do
      post :create, walk: { name: @walk.name, song_link: @walk.song_link }
    end

    assert_redirected_to walk_path(assigns(:walk))
  end

  test "should show walk" do
    get :show, id: @walk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @walk
    assert_response :success
  end

  test "should update walk" do
    put :update, id: @walk, walk: { name: @walk.name, song_link: @walk.song_link }
    assert_redirected_to walk_path(assigns(:walk))
  end

  test "should destroy walk" do
    assert_difference('Walk.count', -1) do
      delete :destroy, id: @walk
    end

    assert_redirected_to walks_path
  end
end
