require 'test_helper'

class DisorderGroupsControllerTest < ActionController::TestCase
  setup do
    @disorder_group = disorder_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:disorder_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create disorder_group" do
    assert_difference('DisorderGroup.count') do
      post :create, disorder_group: { description: @disorder_group.description, name: @disorder_group.name }
    end

    assert_redirected_to disorder_group_path(assigns(:disorder_group))
  end

  test "should show disorder_group" do
    get :show, id: @disorder_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @disorder_group
    assert_response :success
  end

  test "should update disorder_group" do
    patch :update, id: @disorder_group, disorder_group: { description: @disorder_group.description, name: @disorder_group.name }
    assert_redirected_to disorder_group_path(assigns(:disorder_group))
  end

  test "should destroy disorder_group" do
    assert_difference('DisorderGroup.count', -1) do
      delete :destroy, id: @disorder_group
    end

    assert_redirected_to disorder_groups_path
  end
end
